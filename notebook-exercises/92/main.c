#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <stdint.h>

typedef struct pair{
    uint16_t offset;
    uint16_t count;
} pair;

typedef struct four {
    pair post;
    pair pre;
    pair in;
    pair suf;
} four;

int asserted_open(const char* filename, int flags, int* mode);
off_t asserted_lseek(int fd, off_t offset, int whence);
void asserted_read(int fd , void* buffer, ssize_t size);
void asserted_write(int fd, void* buffer, ssize_t size);
int get_count_from_header(int fd);
void skip_header(int fd);
void write_in_interval(int source_fd, pair p, void*el , ssize_t size , int dest_fd);


int get_count_from_header(int fd){
    uint16_t count;
    off_t current_pos = asserted_lseek(fd, 0, SEEK_CUR);
    asserted_lseek(fd, 4, SEEK_SET);
    asserted_read(fd, (void*)&count, sizeof(count) );
    asserted_lseek(fd, current_pos, SEEK_SET);
    return count;
}


int asserted_open(const char* filename, int flags, int* mode){
    int fd;
    if(mode){
        fd = open(filename, flags, mode);
    }else{
        fd = open(filename, flags); 
    }
    if(fd < 0){
        err(1, "Something went wrong in read");
    }
    return fd;
}

off_t asserted_lseek(int fd, off_t offset, int whence){
    off_t off = lseek(fd, offset, whence);
    if(off < 0){
        err(2, "Something went wrong with lseek");
    }
    return off;
}

void asserted_read(int fd , void* buffer, ssize_t size){
    if(read(fd, buffer, size) < 0){
        err(3, "Something went wrong with read");
    }
}
void asserted_write(int fd, void* buffer, ssize_t size){
    if(write(fd, buffer, size) < 0){
        err(4, "Something went wrong in write");
    }
}


void skip_header(int fd){
    asserted_lseek(fd, 16, SEEK_SET);
}

void write_in_interval(int source_fd, const pair p, void*el , ssize_t size , int dest_fd){
    skip_header(source_fd);
    asserted_lseek(source_fd, p.offset * size, SEEK_SET);
    for(int i = 0; i < p.count; i++){
        asserted_read(source_fd, el, size);
        asserted_write(dest_fd, el, size);
    }
    asserted_lseek(source_fd, 0, SEEK_SET);
}

int main(int argc, char* argv[]){
    if(argc != 7){
        errx(2, "Invalid arguments count");
    }
    int affix_fd = asserted_open(argv[1], O_RDONLY, NULL);
    int postfix_fd = asserted_open(argv[2], O_RDONLY, NULL);
    int prefix_fd= asserted_open(argv[3], O_RDONLY, NULL);
    int infix_fd = asserted_open(argv[4], O_RDONLY, NULL);
    int suffix_fd = asserted_open(argv[5], O_RDONLY, NULL);
    int crusifixus_fd = asserted_open(argv[6], O_WRONLY | O_TRUNC | O_CREAT, 0666);
    uint16_t four_count = get_count_from_header(affix_fd) / 2; // деля на 2 защото са двойки във файла а аз чета четворки
    skip_header(affix_fd);
    for(int i = 0; i < four_count; i++){
        four current;
        asserted_read(affix_fd, (void*)&current, sizeof(current));

        uint32_t post_el;
        uint8_t pre_el; 
        uint16_t in_el;
        uint64_t suf_el;

        write_in_interval(postfix_fd, current.post, (void*)&post_el ,sizeof(uint32_t) ,crusifixus_fd);
        write_in_interval(prefix_fd, current.pre, (void*)&pre_el ,sizeof(uint8_t) ,crusifixus_fd);
        write_in_interval(infix_fd, current.in, (void*)&in_el ,sizeof(uint16_t) ,crusifixus_fd);
        write_in_interval(suffix_fd, current.suf, (void*)&suf_el ,sizeof(uint64_t) ,crusifixus_fd);
    }
    close(affix_fd);
    close(postfix_fd);
    close(prefix_fd);
    close(infix_fd);
    close(suffix_fd);
    close(crusifixus_fd);
}

