#include <err.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdint.h>

typedef struct {
    uint16_t type;
    uint16_t reserved[3];
    uint32_t offset1;
    uint32_t offset2;
} SIXPACK;

typedef struct {
    uint32_t magic;
    uint32_t count;
} DATA_HEADER;

typedef struct {
    uint32_t magic1;
    uint32_t magic2;
    uint16_t reserved;
    uint64_t count;
}  COMPARATOR_HEADER;

int asserted_write(int fd, const void* buffer, ssize_t size);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_open(const char* filename, int options, int* mode);
int asserted_lseek(int fd, off_t offset, int whence);
void validate(const DATA_HEADER* data_header, const COMPARATOR_HEADER* comparator_header);
void swap(int data_fd, const SIXPACK* sixpack, const DATA_HEADER* data_header);

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0 ){
        err(1, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0 ){
        err(2, "Something went wrong in read");
    }
    return bytes;
}

int asserted_lseek(int fd, off_t offset, int whence){
    off_t current = lseek(fd, offset,  whence);
    if(current < 0 ){
        err(3, "Something went wrong in lseek");
    }
    return current;
}

int asserted_open(const char* filename, int options, int* mode){
    int fd;
    if(mode){
        fd = open(filename, options, mode);
    }else{
        fd = open(filename, options);
    }
    if(fd < 0){
        err(4, "Something went wrong in open");
    }
    return fd;
}

void validate(const DATA_HEADER* data_header, const COMPARATOR_HEADER* comparator_header){
    if(data_header->magic != 0x21796F4A){
        errx(1, "Invalid data header");
    }else if(comparator_header->magic1 != 0xAFBC7A37){
        errx(2, "Invalid magic1 in comparator header");
    }else if(comparator_header->magic2 != 0x1C27){
        errx(3, "Invalid magic in comparator header");
    }
}

void swap(int data_fd, const SIXPACK* sixpack, const DATA_HEADER* data_header){
    if(sixpack->offset1 >= data_header->count || sixpack->offset2 >= data_header->count ){
        errx(5, "The offset cannot be bigger than data count");
    }
    uint64_t element_1;
    uint64_t element_2;
    asserted_lseek(data_fd, sizeof(DATA_HEADER) + sixpack->offset1 * sizeof(element_1), SEEK_SET);
    asserted_read(data_fd, &element_1, sizeof(element_1));
    asserted_lseek(data_fd, sizeof(DATA_HEADER) + sixpack->offset2 * sizeof(element_2), SEEK_SET);
    asserted_read(data_fd, &element_2, sizeof(element_2));
    if((sixpack->type == 0 && element_1 < element_2) || (sixpack->type == 1 && element_2 < element_1) ){
        asserted_lseek(data_fd, sizeof(DATA_HEADER) + sixpack->offset1 * sizeof(element_1), SEEK_SET);
        asserted_write(data_fd, &element_2, sizeof(element_2));
        asserted_lseek(data_fd, sizeof(DATA_HEADER) + sixpack->offset2 * sizeof(element_2), SEEK_SET);
        asserted_read(data_fd, &element_1, sizeof(element_1));
    }   
}

int main(int argc, char* argv[]){
    if(argc != 3){
        err(1, "Invalid arguments count");
    }
    int data_fd = asserted_open(argv[1], O_RDWR, NULL);
    int comparator_fd = asserted_open(argv[2], O_RDONLY, NULL);
    DATA_HEADER data_header;
    COMPARATOR_HEADER comparator_header;
    asserted_read(data_fd, &data_header, sizeof(DATA_HEADER));
    asserted_read(comparator_fd, &comparator_header, sizeof(COMPARATOR_HEADER));
    validate(&data_header, &comparator_header);
    SIXPACK current;
    for(uint64_t i = 0; i < comparator_header.count; i++){
        asserted_read(comparator_fd, &current, sizeof(current));
        swap(data_fd, &current, &data_header);
    }






}
