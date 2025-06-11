#include <fcntl.h>
#include <unistd.h>
#include <stdbool.h>
#include <err.h>
#include <sys/wait.h>
#include <string.h>

bool read_param(char* buffer);
bool read_param(char* buffer){
    int index = 0;
    char c;
    while(read(0, &c, 1) > 0){
        if(index == 4){
            errx(1, "Invalid command too long");
        }
        if(c == 0x0A || c == 0x20){
            buffer[index] = '\0';
            return true;
        }
        buffer[index++] = c;
    }
    return false;
}

int main(int argc, char* argv[]){
    const char* command;

    if(argc == 1){
        command = "echo";
    }else if(argc == 2){
        command = argv[1];
    }else{
        errx(1, "Too many arguments");
    }
    char param1[5];
    char param2[5];
    while(read_param(param1)){
        pid_t pid = fork();
        if(pid == 0){
            if(read_param(param2)){   
                execlp(command, command, param1, param2, (char*)NULL);
            }
            execlp(command, command, param1, (char*)NULL);
        }
        wait(NULL);
    }
}
