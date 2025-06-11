#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <err.h>
#include <string.h>
#include <stdbool.h>

bool readline(int fd, char* buffer);
int asserted_open(const char* filename, int options, int* mode);
int asserted_write(int fd, const void* buffer , ssize_t size);
int asserted_read(int fd, void* buffer , ssize_t size);
void asserted_pipe(int pfd[2]);
pid_t asserted_fork(void);
void asserteddup2(int from, int to);
void get_hash_info(const char* buffer, char* result);
void wait_child(void);
void execute_child(const char* current_file);




int asserted_open(const char* filename, int options, int* mode){
    int fd;
    if(mode){
        fd = open(filename, options , mode);
    }else{
        fd = open(filename, options);
    }
    if(fd < 0){
        err(2, "Something went wrong in open");
    }
    return fd;
}


int asserted_write(int fd, const void* buffer , ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(3, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer , ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in read");
    }
    return bytes;
}

void asserted_pipe(int pfd[2]){
    if(pipe(pfd) < 0){
        err(1, "Something went wrong in pipe");
    }
}

pid_t asserted_fork(void){
    pid_t current = fork();
    if(current < 0){
        err(5, "Something went wrong in fork");
    }
    return current;
}

void asserteddup2(int from, int to){
    if(dup2(from, to) < 0){
        err(6, "Something went wrong in dup2");
    }
}

void get_hash_info(const char* buffer, char* result){
    while(*buffer != ' '){
        *result = *buffer;
        result++;
        buffer++;
    }
    result++;
    *result = '\0';
}

void wait_child(void){
    int status;
    if(wait(&status) < 0 ){
        err(1, "Something went wrong in wait");
    }
    else if(!WIFEXITED(status)){
        err(2, "program not exited");
    }else if(WEXITSTATUS(status) != 0){
        err(3, "Bad exit status");
    }
}

void execute_child(const char* current_file){
    
    char hash_buffer[4098]; 
    char buffer[4098];
    int pfd1[2]; 
    asserted_pipe(pfd1);
    pid_t pid0 = asserted_fork();
    if(pid0 == 0){
        close(pfd1[0]); 
        asserteddup2(pfd1[1], 1);
        execlp("md5sum", "md5sum", current_file , (char*)NULL);
    }
    close(pfd1[1]);
    asserted_read(pfd1[0], buffer, sizeof(buffer));
    get_hash_info(buffer, hash_buffer);
    char final_filename_buffer[5010];
    snprintf(final_filename_buffer, sizeof(final_filename_buffer), "%s.hash", current_file);
    int current_fd = asserted_open(final_filename_buffer,  O_CREAT | O_WRONLY, (int*)0666);
    asserted_write(current_fd, hash_buffer, strlen(hash_buffer));
    close(current_fd);
    wait_child();
}


bool readline(int fd, char* buffer){
    int index = 0;
    char c;
    while(asserted_read(fd, &c, 1) > 0){
        if(c == '\n'){  
            buffer[index] = '\0';
            return true;
        }
        buffer[index++] = c;
    }
    return false;
}



int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid argument count");
    }
    int pfd1[2];
    int pfd2[2];
    asserted_pipe(pfd1);
    asserted_pipe(pfd2);
    pid_t pid1 = asserted_fork();
    if(pid1 == 0){
        close(pfd1[0]);
        dup2(pfd1[1], 1);
        execlp("find", "find", argv[1] , "-type", "f", (char*)NULL);
    }
    close(pfd1[1]);
    pid_t pid2 = asserted_fork();
    if(pid2 == 0){
        close(pfd2[0]);
        asserteddup2(pfd1[0], 0);
        asserteddup2(pfd2[1], 1);
        execlp("grep", "grep", "-v", "\\.hash$", (char*)NULL);
    }
    close(pfd2[1]);
    char buffer[4098];
    int counter =0;
    while(readline(pfd2[0], buffer)){
        counter++;
        pid_t pid3 = asserted_fork();
        if(pid3 == 0){
            execute_child(buffer);
            exit(0);
        }
    }
    for(int i = 0; i < counter + 2; i++){
        wait_child();
    }
}







