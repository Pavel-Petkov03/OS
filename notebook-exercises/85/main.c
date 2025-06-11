#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <err.h>


void stdin_output();

void stdin_output(){
    char buffer[4096];
    if(read(0, buffer, 4096) < 0){
        err(5, "read");
    }
    write(1, buffer, strlen(buffer));
}

int main(int argc, char* argv[]){
    if(argc == 1){
        stdin_output();
    }
    else{
            for(int i = 1 ; i < argc; i++){
            const char* current_file = argv[i];
            if(!strcmp(current_file, "-")){
                stdin_output();
            }
            else{
                int fd = open(current_file, O_RDONLY);
                if(fd < 0){
                    err(2, "read");
                }
                char c;
                int bytes_number; 
                while((bytes_number = read(fd, &c, 1)) > 0){
                    if(write(1, &c, 1) < 0){
                        err(3, "write");
                    }
                }
                close(fd);
            }
        }
    }   
}
