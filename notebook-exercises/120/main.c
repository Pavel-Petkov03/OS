#include <sys/wait.h>
#include <stdbool.h>
#include <err.h>
#include <stdlib.h>
#include <stddef.h>
#include <unistd.h>



void terminate(const int* children_pids, int argc);

void terminate(const int* children_pids, int argc){
    for(int j = 0; j < argc; j++){
        kill(children_pids[j], SIGTERM);
    }
}


int main(int argc, char* argv[]){
    if(argc > 10){
        errx(1, "Invalid arguments count");
    }
    int children_pids[10];
    bool finished[10];
    while(true){
        for(int i = 0; i < argc - 1; i++){
            if(!finished[i]){
                pid_t pid = fork();
                finished[i] = true;
                if(pid < 0){
                  err(1, "Something went wrong in fork");
                }
                else if(pid == 0){
                    execlp(argv[i+1], argv[i+1], (char*)NULL);
                }
                children_pids[i] = pid;
            }
        }

        int status;
        pid_t current_pid = wait(&status);
        int index = -1;
        for(int j = 0; j < argc - 1; j++){
            if(current_pid == children_pids[j]){
                index = j;
                break;
            }
        }
        if(WIFEXITED(status) && WEXITSTATUS(status) == 0){
            finished[index] = true;
        }
        else if(WIFSIGNALED(status)){
            terminate(children_pids, argc);
            exit(index + 1);
        }else{
            finished[index] = false;
        }


        bool is_done = true;
        for(int i = 0; i < argc - 1; i++){
            if(!finished[i]){
                is_done = false;
            }
        }
        if(is_done){
            exit(0);
        }
    }
}
