#include <unistd.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <err.h>
#include <stdint.h>
#include <stdlib.h>


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
    if(argc != 4){
        errx(1, "Invalid arguments count");
    }
    int N = strtol(argv[2], NULL, 10);
    int dev_null_fd = open("/dev/null", O_WRONLY);
    int out_fd = open(argv[3], O_WRONLY | O_CREAT | O_TRUNC, 0666); 

    if(  dev_null_fd < 0 || out_fd < 0){
        err(2, "Something went wrong in open");
    }

    for(int i = 0; i < N; i++){
        int pfd1[2];
        int pfd2[2];
        if(pipe(pfd1) < 0 || pipe(pfd2) < 0){
            err(3, "Something went wrong in pipe");
        }
        pid_t pid = fork();
        if(pid == 0){
            uint16_t S;
            int dev_random_fd = open("/dev/urandom", O_RDONLY);
            char buffer[UINT16_MAX];
            close(pfd2[0]);
            asserted_read(dev_random_fd, (void*)&S, sizeof(S));
            asserted_read(dev_random_fd, (void*)buffer, S);
            asserted_write(pfd1[1], buffer, S);
            asserted_write(pfd2[1], &S, sizeof(S));
            asserted_write(pfd2[1], buffer, S);
            close(pfd1[1]);
            dup2(pfd1[0], 0);
            dup2(dev_null_fd, 1);
            dup2(dev_null_fd, 2);
            execlp(argv[1], argv[1], (char*)NULL);
            err(1, "Something went wrong in execlp");
        }

        close(pfd1[1]);
        close(pfd2[1]);
        close(pfd1[0]);

        int status;
        wait(&status);
        if(WIFSIGNALED(status)){
            close(pfd2[1]);
            uint16_t S;
            char buffer[UINT16_MAX];
            asserted_read(pfd2[0], &S, sizeof(S));
            asserted_read(pfd2[0], buffer, S);
            asserted_write(out_fd, buffer, S);
            exit(0);
        }
    }
}

