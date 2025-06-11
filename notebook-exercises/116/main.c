#include <err.h>
#include <sys/wait.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>

int asserted_write(int fd, const void* buffer, ssize_t size);
int asserted_read(int fd, void* buffer, ssize_t size);

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in read");
    }
    return bytes;
}

int pfds[8][2]; // 0 za tate / 1..8 za sinko
const char* array[] = {"tic ", "tac ", "toe "};

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "Invalid argument count");
    }    
    int NC = strtol(argv[1], NULL, 10); 
    int WC = strtol(argv[2], NULL, 10); 

    if(NC <= 0 || NC >= 8){
        errx(4, "Invalid NC");
    }else if(WC <= 0 || WC >= 36){
        errx(4, "Invalid WC");
    }
    int ps_count = NC + 1;
    for(int i = 0; i < ps_count; i++){    
        if(pipe(pfds[i]) < 0){
            err(2, "Something went wrong in pipe");
        }
    }
    for(int i = 0; i < NC; i++){
        pid_t pid = fork();
        if(pid == 0){
            for(int j = i + 1; j < WC - 1; j+= ps_count){
                close(pfds[i+1][1]);
                char buffer1[20];
                char buffer2[20];
                asserted_read(pfds[i+1][0], buffer1, sizeof(buffer1));
                int current_index = strtol(buffer1, NULL, 10);
                current_index++;
                asserted_write(1, array[current_index % 3], 4);
                snprintf(buffer2, sizeof(buffer2), "%d", current_index);
                if(i == NC - 1){
                    close(pfds[0][0]);
                    asserted_write(pfds[0][1], buffer2, strlen(buffer2));
                }else{
                    close(pfds[i+2][0]);
                    asserted_write(pfds[i+2][1], buffer2, strlen(buffer2));
                }
            }
            exit(0);
        }
    }
    asserted_write(1, "tic ", 4);
    asserted_write(pfds[0][1], "0", 1);

    for(int i = 0; i < WC - 1; i+= ps_count){
        char buffer1[20];
        char buffer2[20];
        close(pfds[0][1]);
        close(pfds[1][0]);
        asserted_read(pfds[0][0], buffer1, sizeof(buffer1));
        int current_index = strtol(buffer1, NULL, 10);
        current_index++;
        asserted_write(1, array[current_index % 3], 4);
        snprintf(buffer2, sizeof(buffer2), "%d", current_index);
        asserted_write(pfds[1][1], buffer2, strlen(buffer2));
    }

    for(int i = 0; i < NC; i++){
      wait(NULL);
    }
}
