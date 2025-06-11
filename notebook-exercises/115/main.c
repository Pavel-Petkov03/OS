#include <unistd.h>
#include <sys/wait.h>
#include <err.h>
#include <stdlib.h>
#include <stdio.h>


int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in read");
    }
    return bytes;
}

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(5, "Something went wrong in write");
    }
    return bytes;
}

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "Invalid arguments count");
    }
    int pfd1[2];
    int pfd2[2];
    int N = strtol(argv[1], NULL, 10);
    int D = strtol(argv[2], NULL, 10);

    if(pipe(pfd1) == -1 || pipe(pfd2) == -1){
        err(2, "Something went wrong in pipe");
    }

    pid_t pid = fork();

    if(pid == -1){
        err(3, "Something went wrong in fork");
    }

    for(int i = 0; i < N; i++){
        if(pid == 0){
            close(pfd1[1]);
            close(pfd2[0]);
            char signal;
            asserted_read(pfd1[0], &signal, 1); // wait for DING ;
            asserted_write(1, "DONG\n", 5);
            asserted_write(pfd2[1], "x", 1); // send to sleep
        }else{
            close(pfd1[0]);
            close(pfd2[1]);
            asserted_write(1, "DING ", 5);
            asserted_write(pfd1[1], "x", 1); // send to DONG
            char signal;
            asserted_read(pfd2[0], &signal, 1); // wait for DONG
            sleep(D);
        }
    }
    wait(NULL);
}
