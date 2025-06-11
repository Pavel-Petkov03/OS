#include <fcntl.h>
#include <err.h>
#include <unistd.h>
#include <sys/wait.h>

void validate_pipe(int* pfd);
pid_t asserted_fork(void);
// cut -d: -f7  /etc/passwd | sort | uniq -c | sort
//!! ако имам задача с повече пайпове в средата може да изнеса функция


pid_t asserted_fork(void){
    pid_t current = fork();
    if(current < 0){
        err(2, "Something went wrong in fork");
    }
    return current;
}

void validate_pipe(int* pfd){
    if(pipe(pfd) < 0){
        err(3, "Something qwent wrong in pipe");
    }
}

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int pfd1[2];
    validate_pipe(pfd1);
    pid_t pid = asserted_fork();
    if(pid == 0){
        close(pfd1[0]);
        dup2(pfd1[1], 1);
        execlp("cut", "cut" , "-d:", "-f7", argv[1], (char*)NULL);
        err(2, "Somethign went wrong in execlp");
    }
    close(pfd1[1]);
    int pfd2[2];
    validate_pipe(pfd2);
    pid_t pid2 = asserted_fork();
    if(pid2 == 0){
        close(pfd2[0]);
        dup2(pfd1[0], 0);
        dup2(pfd2[1], 1);
        execlp("sort", "sort", (char*)NULL);
        err(2, "Something went wrong in execlp");
    }

    close(pfd2[1]);
    int pfd3[2];
    validate_pipe(pfd3);
    pid_t pid3 = asserted_fork();
    if(pid3 == 0){
        close(pfd3[0]);
        dup2(pfd2[0], 0);
        dup2(pfd3[1], 1);
        execlp("uniq", "uniq", "-c", (char*)NULL);
        err(2, "Something went wrong in execlp");
    }
    close(pfd3[1]);
    wait(NULL);
    wait(NULL);
    wait(NULL);
    dup2(pfd3[0], 0);
    execlp("sort" , "sort", (char*)NULL);
}
