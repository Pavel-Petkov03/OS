#include <err.h>
#include <fcntl.h>
#include <unistd.h>

void run_head_command(int fd2);
void run_head_command(int fd2){
    int bytes;
    char c;
    int counter = 0;
    while((bytes = read(fd2, &c, 1)) > 0 && counter != 10){
        if(c == '\n'){
            counter++;
        }
        write(1, &c, 1);
    }
}

int main(int argc, char* argv[]){
    if(argc == 1){
        char filename[1024];
        int len = read(0, filename, 1024);
        filename[len-1] = '\0';
        write(1, filename, len-1);
        int fd = open(filename, O_RDONLY, 0644);
        if(fd < 0){
            err(1, "Something went wrong no such file %s", filename);
        }
        run_head_command(fd);
    }else if(argc == 2){
        int fd = open(argv[1], O_RDONLY, 0644);
        run_head_command(fd);
    }else { 
        err(1, "Something went wrong");
    }
}
