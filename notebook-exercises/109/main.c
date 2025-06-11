

#include <sys/wait.h>
#include <fcntl.h>
#include <unistd.h>
#include <err.h>

// важно е в тази задача да се отбележи, че ако wait_child са последователни при големи изходи на find
// тръбата се препълва и става deadlock, така че затова са в края

//  find ~ -printf "%A@ %p\n" | sort | tail -n 1 | cut -d " " -f2

void wait_child(void);

void wait_child(void){
    int status;
    if(wait(&status) < 0){
        err(3, "Something went wrong in wait");
    }
    if(!WIFEXITED(status)){
        errx(1, "Something went wrong in child");
    }
}

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int pfd1[2];
    if(pipe(pfd1) < 0){
        err(2, "Something went wrong in pipe");
    }
    pid_t pid1 = fork();
    if(pid1 < 0){
        err(3, "Something went wrong in fork");
    }
    else if(pid1 == 0){
        close(pfd1[0]);
        int fd = open("/dev/null", O_WRONLY);
        if(fd < 0){
            err(4, "Something went wrong in open");
        }
        dup2(fd, 2);
        dup2(pfd1[1], 1);
        execlp("find", "find" , argv[1] , "-printf" ,  "%A@ %p\n", (char*)NULL);
    }
    close(pfd1[1]);
    int pfd2[2];
    if(pipe(pfd2) < 0){
        err(2, "Something went wrong in pipe");
    }
    pid_t pid2 = fork();
    if(pid2 < 0){
        err(3, "Something went wrong in fork");
    }
    else if(pid2 == 0){
        close(pfd2[0]);
        dup2(pfd1[0], 0);
        dup2(pfd2[1], 1);
        execlp("sort", "sort" , (char*)NULL);
    }
    close(pfd2[1]);
    int pfd3[2];
    if(pipe(pfd3) < 0){
        err(2, "Something went wrong in pipe");
    }
    pid_t pid3 = fork();
    if(pid3 < 0){
        err(3, "Something went wrong in fork");
    }
    else if(pid3 == 0){
        close(pfd3[0]);
        dup2(pfd2[0], 0);
        dup2(pfd3[1], 1);
        execlp("tail", "tail" , "-n", "1", (char*)NULL);
    }
    close(pfd3[1]);
    wait_child();
    wait_child();
    wait_child();
    dup2(pfd3[0], 0);
    execlp("cut", "cut", "-d", " ", "-f2", (char*)NULL);
}

