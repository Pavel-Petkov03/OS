#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>

typedef struct {
    uint32_t magic;
    uint32_t packets_count;
    uint64_t original_size;
} HEADER;

int asserted_open(const char* filename, int flags, int* mode);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);
bool get_senior_bit(uint8_t number, uint8_t* N);

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
        err(2, "something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(2, "something went wrong in read");
    }
    return bytes;
}

bool get_senior_bit(uint8_t number, uint8_t *N) {
    *N = number & 0x7F; // 01111111
    return (number & 0x80) != 0; // 10000000
}

int main(int argc, char* argv[]){
    if(argc != 3){  
        errx(1, "Invalid arguments count");
    }
    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_WRONLY | O_TRUNC | O_CREAT, (int*)0666);
    HEADER header;
    asserted_read(fd1, (void*)&header, sizeof(header));
    if(header.magic != 0x21494D46){
        errx(2, "Invalid magic in header");
    }
    uint64_t original_size_counter = 0;
    for(int i = 0; i < header.packets_count; i++){
        uint8_t first_byte;
        asserted_read(fd1, (void*)&first_byte, sizeof(first_byte));
        uint8_t N = 0;
        bool senior_bit = get_senior_bit(first_byte, &N);
        if(senior_bit){
            uint8_t next_byte;
            asserted_read(fd1, (void*)&next_byte, sizeof(next_byte));
            for(int j = 0; j < N + 1; j++){
                original_size_counter++;
                asserted_write(fd2, (const void*)&next_byte, sizeof(next_byte));
            }
        }else{
            uint8_t next_byte;
            for(int j = 0; j < N + 1; j++){
                original_size_counter++;
                asserted_read(fd1, (void*)&next_byte, sizeof(next_byte));
                asserted_write(fd2, (const void*)&next_byte, sizeof(next_byte));
            }
        }
    }

    if(original_size_counter != header.original_size){
      errx(3, "Header original size is not valid");
    }
    close(fd1);
    close(fd2);
}


