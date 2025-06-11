#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <sys/types.h>

int asserted_open(const char* filename, int flags, int* mode);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);
off_t asserted_lseek(int fd, ssize_t offset, off_t whence);
pid_t asserted_fork(void);

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

int asserted_open(const char* filename, int flags, int* mode){
    int fd;
    if(mode){
        fd = open(filename, flags, mode);
    }else{
        fd = open(filename, flags);
    }
    if(fd < 0){
        err(1, "Something went wrong in open: %s", filename);
    }
    return fd;
}

off_t asserted_lseek(int fd, ssize_t offset, off_t whence){
    off_t new_offset = lseek(fd, offset, whence);
    if(new_offset < 0){
        err(4, "Something went wrong in lseek");
    }
    return new_offset;
}


pid_t asserted_fork(void){
    int current = fork();
    if(current == -1){
        err(6, "Something went wrong in fork");
    }
    return current;
}



