#include <err.h>
#include <unistd.h>
#include <fcntl.h>
#include <stddef.h>
#include <sys/wait.h>

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int pfd[2];
    if(pipe(pfd) < 0){
        err(2, "Something went wrong in pipe");
    }
    pid_t pid = fork();
    if(pid == 0){
        close(pfd[0]);
        dup2(pfd[1], 1);
        close(pfd[1]);
        execlp("cat", "cat" , argv[1], (char*)NULL);
    }
    close(pfd[1]);
    dup2(pfd[0], 0);
    close(pfd[0]);
    execlp("sort", "sort", (char*)NULL);
}
