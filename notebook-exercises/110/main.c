#include <err.h>
#include <fcntl.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdio.h>
#include <stdbool.h>
#include <time.h>

#define LOG_FILE "run.log"

int main(int argc, char* argv[]){
    if(argc < 3){
        errx(1, "The arguments count must be at least 2");
    }
    int log_fd = open(LOG_FILE, O_CREAT | O_TRUNC | O_WRONLY, 0666);
    if(log_fd < 0){
        err(2, "Something went wrong in open");
    }

    char* command = argv[2];
    char** args = &argv[2];
    int max_duration = argv[1][0] - '0';
    if(max_duration < 0 || max_duration > 9){
        errx(4, "Invalid duration");
    }

    int prev_error_code = 0;
    int prev_duration = 10;
    while (true){
        time_t start_time = time(NULL);
        pid_t pid = fork();
        int status;
        if(pid == -1){
            err(3, "Something went wrong in fork");
        }
        else if(pid == 0){
            execvp(command, args);
        }
        wait(&status);
        
        time_t end_time = time(NULL);
        time_t duration = end_time - start_time;
        int error_code = WIFEXITED(status) ? WEXITSTATUS(status) : -1;
        if((duration < max_duration && prev_duration < max_duration) || (prev_error_code != 0 && error_code != 0)){
            break;
        }
        char buffer[1024];
        snprintf(buffer, sizeof(buffer), "%lo %lo %d \n", start_time, end_time, error_code);
        if(write(log_fd, buffer, strlen(buffer)) < 0){
            err(6, "Something went wrong in write");
        }
        prev_error_code = error_code;
        prev_duration = duration;
    }
}
