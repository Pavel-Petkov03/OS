#include <fcntl.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdint.h>
#include <err.h>

int asserted_open(const char* filename, int flags, int* mode);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);

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

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(2, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(3, "Something went wrong in read");
    }
    return bytes;
}
off_t asserted_lseek(int fd, off_t offset, int whence){
    off_t pos = lseek(fd, offset, whence);
    if(pos  < 0){
        err(4, "Something went wrong in lseek");
    }
    return pos;
}

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "Invalid arguments count");
    }
    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_CREAT | O_WRONLY | O_TRUNC, (int*)0666);
    uint8_t sentinel = 0x55;
    char c;
    while(asserted_read(fd1, &c , 1) > 0 ){
        if(c == sentinel){
            uint8_t N;
            char buffer[256];
            asserted_read(fd1, (void*)&N, 1);
            off_t back_reference;
            bool to_get_back = false;
            uint8_t wanted_check_sum = sentinel ^ N;
            for (int i = 0; i < N-3; i++){
                asserted_read(fd1, (void*)&buffer[i], 1);
                wanted_check_sum ^= buffer[i];
                if(buffer[i] == sentinel){
                    back_reference = asserted_lseek(fd1, 0, SEEK_CUR);
                    to_get_back = true;
                }
            }
            uint8_t check_sum;
            asserted_read(fd1, (void*)&check_sum, 1);
            if(check_sum == wanted_check_sum){
                asserted_write(fd2, (const void*)&sentinel, 1);
                asserted_write(fd2, (const void*)&N, 1);
                asserted_write(fd2, (const void*)buffer, N - 3);
                asserted_write(fd2, (const void*)&check_sum, 1);
            }
            if(to_get_back){
                asserted_lseek(fd1, back_reference, SEEK_SET);
            }
        }
    }
    close(fd1);
    close(fd2);
}
