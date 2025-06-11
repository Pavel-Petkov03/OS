#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <stdint.h>

int asserted_open(const char* filename, int flags, int* mode);
void asserted_read(int fd, void* buffer, ssize_t size);
void asserted_write(int fd, void* buffer, ssize_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);
void copy_file(int fd_source, int fd_dest);


typedef struct {
    uint16_t offset;
    uint8_t original; 
    uint8_t new;
} triple;

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

void asserted_read(int fd, void* buffer, ssize_t size){
    if(read(fd, buffer, size) < 0){
        err(2, "Something went wrong in read");
    }
}
off_t asserted_lseek(int fd, off_t offset, int whence){
    off_t new_offset = lseek(fd, offset, whence);
    if( new_offset < 0){
        err(4, "Something went wrong in lseek");
    }
    return new_offset;
}

void asserted_write(int fd, void* buffer, ssize_t size){
    if(write(fd, buffer, size) < 0){
        err(2, "Something went wrong in write");
    }
}

void copy_file(int fd_source, int fd_dest){
    char c;
    int bytes;
    while((bytes = read(fd_source, &c, 1)) > 0){
        asserted_write(fd_dest, (void*)&c , 1);
    }
}

int main(int argc, char* argv[]){
    if(argc != 4){
        errx(1, "Invalid arguments count");
    }
    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_RDONLY, NULL);
    int fd3 = asserted_open(argv[3], O_RDWR | O_TRUNC | O_CREAT, (int*)0666);
    triple current;
    int bytes;
    copy_file(fd2, fd3);
    while((bytes = read(fd1, &current, sizeof(current))) > 0){
        asserted_lseek(fd2, current.offset, SEEK_SET);
        uint8_t wanted;
        asserted_read(fd2, (void*)&wanted, sizeof(wanted));
        if(wanted == current.original){
            asserted_lseek(fd3, current.offset, SEEK_SET);
            asserted_write(fd3, (void*)&current.new, sizeof(current.new));
        }
    }
    close(fd1);
    close(fd2);
    close(fd3);
}
