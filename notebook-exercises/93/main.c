#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <err.h>


int asserted_open(const char* filename, int flags, int* mode);
void asserted_write(int fd, void* buffer, ssize_t size);
void asserted_read(int fd, void* buffer, ssize_t size);
void asserted_lseek(int fd, off_t offset, int whence);

int asserted_open(const char* filename, int flags, int* mode){
    int fd;
    if(mode){
        fd = open(filename, flags, mode);
    }else{
        fd = open(filename, flags);
    }
    if(fd < 0){
        err(1, "Something went wrong in open");
    }
    return fd;
}

void asserted_write(int fd, void* buffer, ssize_t size){
    if(write(fd, buffer, size) < 0){
        err(2, "Something went wrong in write");
    }
}

void asserted_read(int fd, void* buffer, ssize_t size){
    if(read(fd, buffer, size) < 0){
        err(1, "Something went wrong in read");
    }
}

void asserted_lseek(int fd, off_t offset, int whence){
    if(lseek(fd, offset, whence) < 0){
        err(3, "Something went wrong in lseek");
    }
}


int main(int argc, char* argv[]){
    if(argc != 4){
        errx(1, "Invalid arguments count");
    }
    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_RDONLY, NULL);
    int fd3 = asserted_open(argv[3], O_WRONLY | O_TRUNC | O_CREAT, 0666);
    char c;
    int offset = 0;
    int bytes;
    while((bytes = read(fd1, &c, 1)) > 0){
        uint8_t num = c;
        for(int i = 0; i < 8; i++){
            int is_upper = num % 2;
            num /= 2;
            if(is_upper){
                uint16_t current_number;
                asserted_lseek(fd2, offset * sizeof(uint16_t), SEEK_SET);
                asserted_read(fd2, (void*) &current_number, sizeof(uint16_t));
                asserted_lseek(fd2, 0, SEEK_SET);
                asserted_write(fd3, (void*) &current_number, sizeof(current_number));
            }
            offset++;
        }
    }
}
