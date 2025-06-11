#include <err.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>


void copy_file(int source_fd, int dest_fd);
int asserted_open(const char* filename, int flags, int* mode);
void asserted_read(int fd, void* buffer, ssize_t size);
void asserted_write(int fd, void* buffer, ssize_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);


 off_t asserted_lseek(int fd, off_t offset, int whence){
    if(lseek(fd, offset, whence) < 0){
        err(4, "Something went wrong in lseek");
    }
 }

void asserted_read(int fd, void* buffer, ssize_t size){
    if(read(fd, buffer, size) < 0){
        err(2, "something went wrong in read");
    }    
}

void asserted_write(int fd, void* buffer, ssize_t size){
    if(write(fd, buffer, size) < 0){
        err(3, "something went wrong in write");
    }    
}

int asserted_open(const char* filename, int flags, int* mode){
    int fd;
    if(mode){
        fd = open(filename, flags, mode);
    }else{
        fd = open(filename, flags);
    }
    if(fd < 0){
        err(1, "Something went wrong while openning");
    }
    return fd;
}

void copy_file(int source_fd, int dest_fd){
    char c;
    while(read(source_fd, &c, 1) > 0){
        asserted_write(dest_fd, (void*)&c, 1);
    }
}

int main(int argc, char* argv[]){
    if(argc != 4){
        errx(1, "Invalid arguments count"); 
    }

    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_RDONLY, NULL);
    int fd3 = asserted_open(argv[3], O_WRONLY | O_TRUNC | O_CREAT , 0666);
    uint32_t magic;
    uint8_t header_version;
    uint8_t data_version;
    uint16_t count;
    uint32_t reserved;
    asserted_read(fd1, (void*)&magic, sizeof(magic));
    asserted_read(fd1, (void*)&header_version, sizeof(header_version));
    if(magic != 0xEFBEADDE){
        errx(2, "Invalid magic");
    }
    if(header_version != 0x1){
        errx(3, "Invalid header version");
    }
    asserted_read(fd1, (void*)&data_version, sizeof(data_version));
    asserted_read(fd1, (void*)&count, sizeof(count));
    asserted_read(fd1, (void*)&reserved, sizeof(reserved));
    asserted_read(fd1, (void*)&reserved, sizeof(reserved));
    copy_file(fd2, fd3);
    for (int i = 0; i < count; i++){
        if(data_version == 0x00){
            uint16_t offset;
            uint8_t original_byte;
            uint8_t new_byte;
            asserted_read(fd1, (void*)&offset, sizeof(offset));
            asserted_read(fd1, (void*)&original_byte, sizeof(original_byte));
            asserted_read(fd1,(void*)&new_byte, sizeof(new_byte));

            asserted_lseek(fd2, offset, SEEK_SET);
            uint8_t wanted;
            asserted_read(fd2, (void*)&wanted, sizeof(wanted));
            if(wanted == original_byte){
                asserted_lseek(fd3, offset, SEEK_SET);
                asserted_write(fd3, (void*)&new_byte, sizeof(new_byte));
            }
        }else if(data_version == 0x01){    
            uint32_t offset;
            uint16_t original_word;
            uint16_t new_word;
            asserted_read(fd1, (void*)&offset, sizeof(offset));
            asserted_read(fd1, (void*)&original_word, sizeof(original_word));
            asserted_read(fd1, (void*)&new_word, sizeof(new_word));
            asserted_lseek(fd2, offset, SEEK_SET);
            uint16_t wanted;
            asserted_read(fd2, (void*)&wanted, sizeof(wanted));
            if(wanted == original_word){
                asserted_lseek(fd3, offset, SEEK_SET);
                asserted_write(fd3, (void*)&new_word, sizeof(new_word));
            }
        }
    }
    close(fd1);
    close(fd2);
    close(fd3);
}

