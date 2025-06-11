#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <string.h>
#include <stdint.h>
#include <stdio.h>
#include <sys/wait.h>
#include <stdlib.h>

int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size); 
    if(bytes < 0){
        err(3, "Something went wrong in open");
    }
    return bytes;
}

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size); 
    if(bytes < 0){
        err(3, "Something went wrong in write");
    }
    return bytes;
}

typedef struct {
    char filename[8];
    uint32_t offset;
    uint32_t length;
} triple;

int pfds[8][2];
triple triples[8];

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid argument count");
    }
    int fd = open(argv[1], O_RDONLY);
    if(fd < 0){
        err(2, "Something went wrong in open");
    }
    triple current;
    int len = 0;
    while(asserted_read(fd, (void*)&current, sizeof(current)) > 0){
        triples[len++] = current;
    }
    for(int i = 0; i < len; i++){
        if(pipe(pfds[i]) < 0){
            err(4, "Something went wrong in pipe");
        }
        pid_t pid = fork();
        if(pid == 0){
            close(pfds[i][0]);
            dup2(pfds[i][1], 1);
            int current_fd = open(triples[i].filename, O_RDONLY);
            if(current_fd < 0){
                err(6, "Something went wrong in open");
            }
            if(lseek(current_fd, sizeof(uint16_t) * triples[i].offset, SEEK_SET) < 0){
                err(7, "Something went wrong in lseek");
            }
            uint16_t result = 0;
            uint16_t byte;
            for(uint32_t j = 0; j < triples[i].length; j++){
                asserted_read(current_fd, (void*)&byte, sizeof(byte));
                result ^= byte;
            }
            asserted_write(pfds[i][1], (const void*)&result, sizeof(result));
            exit(0);
        }
    }
    for(int i = 0; i < len; i++){
        close(pfds[i][1]);
        wait(NULL); //todo
    }
    uint16_t final = 0;
    uint16_t current_res;
    for(int i = 0; i < len; i++){
        asserted_read(pfds[i][0], (void*)&current_res, sizeof(current_res));
        final ^= current_res;
    }
    char buffer[50];
    snprintf(buffer, sizeof(buffer), "Result: %x", final);
    asserted_write(1, buffer, strlen(buffer));
}


