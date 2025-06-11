#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <sys/wait.h>

int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);


int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes == -1){
        err(1, "Something went wrong in read");
    }
    return bytes;
}

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes == -1){
        err(1, "Something went wrong in write");
    }
    return bytes;
}


int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1,  "Invalid arguments count");
    }
    int fd  = open(argv[2], O_TRUNC | O_CREAT | O_WRONLY, 0666);
    if(fd < 0){
        err(4, "Something went wrong in open");
    }
    int pfd[2];
    if(pipe(pfd) < 0){
        err(2, "Something went wrong in pipe");
    }
    pid_t pid = fork();

    if(pid == 0){
        close(pfd[0]);
        dup2(pfd[1], 1);
        execlp("cat", "cat", argv[1], (char*)NULL);
    }
    close(pfd[1]);
    int status;
    wait(&status);
    if(!WIFEXITED(status)){
        err(6, "not exited");
        
    }else if(WEXITSTATUS(status) != 0){
        err(7, "Bad status");
    }
    dup2(pfd[0], 0); // може и директно от pfd[0] ппц
    char c;
    while (asserted_read(0, (void*)&c, sizeof(c)) == 1){
        if(c == 0x7D){
            if(asserted_read(0, (void*)&c, 1) == 1){
                uint8_t byte = c ^ 0x20;
                asserted_write(fd, (const void*)&byte, 1);   
            }
        }else if(c != 0x55){
           asserted_write(fd, (const void*)&c, 1);
        }
    }
}
