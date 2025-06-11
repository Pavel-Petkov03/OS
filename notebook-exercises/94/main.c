

#include <err.h>
#include <fcntl.h>
#include <err.h>
#include <stdint.h>
#include <unistd.h>

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "The argument count must be 2");
    }
    int fd1 = open(argv[1], O_RDONLY);
    int fd2 = open(argv[2], O_WRONLY | O_TRUNC | O_CREAT, 0666);

    if(fd1 < 0){
        err(2, "Something went wrong while openning");
    }
    if(fd2 < 0){
        err(2, "Something went wrong while openning");
    }
    char c;
    int bytes;
    while((bytes = read(fd1, &c, 1)) > 0){
        uint8_t current = c;
        uint16_t result = 0;
        for(int i = 0; i < 8; i++){
            int mod = current % 2;
            current /= 2;
            if(mod == 1){
                result *= 2;
                result++;
                result *= 2;
            }else{
                result*= 4;
                result++;
            }
        }
        uint16_t reversed = 0;
        for(int i = 0; i < 16; i++){
            reversed = reversed * 2 + (result % 2); 
            result /= 2;
        }
        if(write(fd2, &reversed, sizeof(reversed)) < 0){
            err(5, "Error while writing");
        }
    }
    close(fd1);
    close(fd2);
}
