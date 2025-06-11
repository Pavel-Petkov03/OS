#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <stdint.h>

int main(int argc, char* argv[]) {
    if(argc != 3){
        errx(1, "The arguments counst must be 2");
    }
    int fd1 = open(argv[1], O_RDONLY);
    if(fd1 < 0){
        err(2, "Something went wrong while reading");
    }

    int fd2 = open(argv[2], O_TRUNC | O_CREAT | O_WRONLY, 0666);
    if(fd2 < 0){
        err(2, "Something went wrong while reading");
    }

    int bytes;
    char c[2]; 
    while((bytes = read(fd1, &c, 2)) > 0){
        uint8_t generated = 0;
        for(int j= 0; j < 2; j++){
            uint8_t number = c[j];
            for(int i = 0; i < 4; i++){
                int byte_1 = number % 2;
                number /= 2;
                int byte_2 = number % 2;
                number /= 2;
                if(byte_1 == 1 && byte_2 == 0){
                    generated *= 2;
                }
                else if(byte_1 == 0 && byte_2 == 1){
                    generated *= 2;
                    generated++;
                }else{
                    errx(4, "Invalid encoded file");
                }
            } 
        }
        uint8_t reversed = 0;
        for(int i = 0; i < 8; i++){
            reversed = reversed * 2 + (generated % 2);
            generated /= 2;
        }
        if(write(fd2, &reversed, 1) < 0){
            err(13, "error in write");
        }
    }
    close(fd1);
    close(fd2);
}

