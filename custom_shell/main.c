#include <fcntl.h>
#include <err.h>
#include <unistd.h>
#include <string.h>


void get_info(char* buffer, char* command, char** args){
    program = strtok(buffer, "|");
    index++;
    while((args[index] = strtok(buffer, NULL)) != NULL){
        index++;
    }
    args[indx] = NULL;
}


int main(int argc, char* argv[]){
    while(true){
        asserted_write(1, ">>>", 3);
        char buffer[4098];
        int bytes = asserted_read(0, buffer, sizeof(buffer));
        int pipe_count = get_symbol_count(buffer, '|');
        int* pfds[2] = (int*)[2] malloc(2 * sizeof(int) * pipe_count);
        for(int i = 0; i < pipe_count; i++){
            asserted_pipe(pfds[i]);
        }
        for(int i = 0; i < pipe_count + 1; i++){
            pid_t pid = fork();
            if(pid == 0){
                if(i == 0){ 
                    close(pfds[0][0]);
                    if(pipe_count != 0){
                        dup2(pfds[1][1], 1);
                    }
                    execvp(args[0], args);
                }else if(i == pipe_count){
                    close(pfds[i-1][1]);
                    dup2(pfds[i-1][0], 0);
                    execvp(args[0], args);
                }else{
                    close(pfds[i-1][1]);
                    close(pfds[i][0]);
                    dup2(pfds[i-1][0], 0);
                    dup2(pfds[i][1], 1);
                    execvp(args[0], args);
                }
            }
        }
        free(pfds);
    }
}
