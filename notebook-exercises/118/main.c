#include <err.h>
#include <sys/wait.h>
#include <stddef.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdbool.h>


// може да се тества във test да се мятат неща
// ./test/found/main дава това което искаме и директно exit 0
// ./test/forever/main не приключва
// ./test/segfault/main връща грешка 
// мисля че стига да се тества със всякакви комбинации на тези трите


void terminate(const int* pids, ssize_t len);

void terminate(const int* pids, ssize_t len){
    for(int i = 0; i < len; i++){
        kill(pids[i], SIGTERM);
    }
}

int main(int argc, char* argv[]){
    int (*pfds)[2] = malloc(sizeof(int[2]) * argc);
    pid_t * children_pids = malloc(sizeof(pid_t) * argc);
    for(int i = 0; i < argc; i++){
        if(pipe(pfds[i]) < 0){
            err(26, "Something went wrong in pipe");
        }
    }
    for(int i = 0; i < argc; i++){
        pid_t pid = fork();
        if(pid == 0){
            close(pfds[i][0]);
            dup2(pfds[i][1], 1);
            execlp(argv[i+1], argv[i+1], (char*)NULL);
        }
        pid_t pid2 = fork();
        if(pid2 == 0){
            close(pfds[i][1]);
            char buffer[1024];
            if(read(pfds[i][0], buffer, 1024) < 0){
                err(26, "Something went wrong in read");
            }
            const char* str = "found it!";
            if(!strncmp(buffer, str, strlen(str))){
                terminate(children_pids, argc);
                free(pfds);
                free(children_pids);
                exit(0);
            }
            close(pfds[i][0]);
            exit(1);
        }
        children_pids[i] = pid2;
    }
    bool has_bad_code = false;
    for(int i = 0; i < argc; i++){
        int status;
        wait(&status);
        if(WIFEXITED(status) && WEXITSTATUS(status) == 0){
            free(pfds);
            write(1, "Exit status 0", 14);
            exit(0);
        }else if(WIFEXITED(status) && WEXITSTATUS(status) != 1){
            has_bad_code = true;
        }
    }
    free(pfds);
    free(children_pids);
    if(has_bad_code){
         write(1, "Exit status 26", 14);
         exit(26);
    }else{
         write(1, "Exit status 1", 14);
         exit(1);
    }
}
