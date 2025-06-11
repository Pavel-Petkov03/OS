#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/wait.h>
// ne sum sig dali e reshena

typedef struct {
    uint16_t ram_size;
    uint16_t register_count;
    uint8_t filename[8];
} TRIPLE;

typedef struct  {
    uint8_t opcode;
    uint8_t op1;
    uint8_t op2; 
    uint8_t op3;
} INSTRUCTION;


void run_instruction(uint8_t* register_values, uint8_t* ram_size_values, const INSTRUCTION* instructions, int index, int len);
void run_child(const TRIPLE data);
int asserted_open(const char* filename, int options, int* mode);
int asserted_write(int fd, const void* buffer, ssize_t size);
int asserted_read(int fd, void* buffer, ssize_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);
pid_t asserted_fork(void);
int get_file_size(int fd);




int asserted_open(const char* filename, int options, int* mode){
    int fd;
    if(mode){
        fd = open(filename, options, mode);
    }else{
        fd = open(filename, options);
    }
    if(fd < 0){
        err(1, "Something went wrong in open %s", filename);
    }
    return fd;
}


int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(3, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in read");
    }
    return bytes;
}


off_t asserted_lseek(int fd, off_t offset, int whence){
    off_t rel = lseek(fd, offset, whence);
    if(rel < 0){
        err(5, "Something went wrong in lseek");
    }
    return rel;
}

pid_t asserted_fork(void){
    pid_t pid = fork();
    if(pid < 0){
        err(6, "Something went wrong in fork");
    }
    return pid;
}


int get_file_size(int fd){
    struct stat info;
    if(fstat(fd, &info) < 0){
        err(7, "Something went wrong in fstat");
    }
    return info.st_size;
}

void run_instruction(uint8_t* register_values, uint8_t* ram_size_values, const  INSTRUCTION* instructions, int index, int len){
    if(index >= len){
        return;
    }
    INSTRUCTION instruction = instructions[index];
    if(instruction.opcode == 0){
        register_values[instruction.op1] = register_values[instruction.op2] & register_values[instruction.op3];
    }else if(instruction.opcode == 1){
        register_values[instruction.op1] = register_values[instruction.op2] | register_values[instruction.op3];
    }else if(instruction.opcode == 2){
        register_values[instruction.op1] = register_values[instruction.op2] + register_values[instruction.op3];
    }else if(instruction.opcode == 3){
        register_values[instruction.op1] = register_values[instruction.op2] * register_values[instruction.op3];
    }else if(instruction.opcode == 4){
        register_values[instruction.op1] = register_values[instruction.op2] ^ register_values[instruction.op3];
    }else if(instruction.opcode == 5){
        asserted_write(1, &register_values[instruction.op1], 1);
    }else if(instruction.opcode == 6){
        sleep(register_values[instruction.op1]);
    }else if(instruction.opcode == 7){
        register_values[instruction.op1] = ram_size_values[register_values[instruction.op2]];
    }else if(instruction.opcode == 8){
        ram_size_values[register_values[instruction.op2]] = register_values[instruction.op1];
    } else if(instruction.opcode == 9){
        if(register_values[instruction.op1] != register_values[instruction.op2]){
            run_instruction(register_values, ram_size_values, instructions, instruction.op3, len);
        }
    }else if(instruction.opcode == 10){
        register_values[instruction.op1] = instruction.op2;
    }else if(instruction.opcode == 11){
        ram_size_values[register_values[instruction.op1]] = instruction.op2;
    }else {
        errx(3, "Invalid instruction");
    }
}

void run_child(const TRIPLE data){
    char buffer[8];
    snprintf(buffer, sizeof(buffer), "%s", data.filename);
    int current_fd = asserted_open(buffer, O_RDWR, NULL);
    uint8_t register_values[32];
    uint8_t ram_size_values[512];

    asserted_read(current_fd, register_values, data.register_count);
    asserted_read(current_fd, ram_size_values, data.ram_size);
    int instruction_count = (get_file_size(current_fd) - data.register_count - data.ram_size) / sizeof(INSTRUCTION);
    INSTRUCTION* instructions = malloc(sizeof(INSTRUCTION) * instruction_count);
    for(int j = 0; j < instruction_count; j++){
        asserted_read(current_fd, &instructions[j], sizeof(INSTRUCTION));
    }

    for(int j = 0; j < instruction_count; j++){
        run_instruction(register_values, ram_size_values, instructions , j, instruction_count);
        asserted_lseek(current_fd, 0, SEEK_SET);
        asserted_write(current_fd, register_values, data.register_count);
        asserted_write(current_fd, ram_size_values, data.ram_size);
    }
    close(current_fd);
    free(instructions);
    exit(0);
}


int main(int argc, char*argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int fd = asserted_open(argv[1], O_RDONLY, NULL);
    int file_size = get_file_size(fd);
    int triple_count = file_size / sizeof(TRIPLE);
    for(int i = 0; i < triple_count; i++){
        TRIPLE data;
        asserted_read(fd, &data, sizeof(data));
        if(data.ram_size > 512){
            errx(2, "Invalid ram size");
        }else if(data.register_count > 32){
            errx(3, "Invalid register count");
        }
        pid_t pid = asserted_fork();
        if(pid == 0){
            run_child(data);
        }
    }
    for(int i = 0; i < triple_count; i++){
        int status;
        if(wait(&status) < 0){
            err(3, "Something went wrong in wait");
        }
        else if(!WIFEXITED(status)){
            err(4, "not exited");
        }else if(WEXITSTATUS(status) != 0){
            err(5, "Exit status is not 0");
        }
    }
}
