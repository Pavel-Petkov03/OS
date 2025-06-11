#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <err.h>


typedef struct triple {
    uint16_t offset;
    uint8_t original;
    uint8_t new;
} triple;

int main(int argc, char* argv[]){
    if(argc != 4){
        errx(1, "The arguments count must be 3");
    }
    int fd1 = open(argv[1], O_RDONLY);
    if(fd1 < 0){
        err(2, "read");
    }
    int fd2 = open(argv[2], O_RDONLY);
    if(fd2 < 0){
        err(3, "read");
    }
    int fd3 = open(argv[3], O_WRONLY | O_CREAT, 0666);
    if(fd3 < 0){
        err(3, "read");
    }
    char first_byte;
    char second_byte;
    char bytes1;
    char bytes2;
    uint16_t offset = 0;
    triple example;
    while((bytes1 = read(fd1, &first_byte, 1)) > 0 && (bytes2 = read(fd2, &second_byte, 1)) > 0){
        if(bytes1 < 0 || bytes2 < 0){
            err(4, "Error while reading");
        }
        if(first_byte != second_byte){
            example.offset = offset;
            example.original = first_byte;
            example.new = second_byte;
            if(write(fd3, &example, sizeof(example)) < 0){
                err(5, "Error while writing");
            }
        }
        offset++;
    }
}
