#include <stdint.h>
#include <fcntl.h>
#include <err.h>
#include <unistd.h>

// Ако някой чете тази задача да знае, че не е вярна
// човекът който е писал условието може да се яви на матура по български отново
// няма да я вземе 

uint32_t get_file_count(int fd, uint32_t expected_type);
void asserted_read(int fd, void* buffer, ssize_t size);
int asserted_open(const char* filename, int perms, int* mode);
off_t asserted_lseek(int fd, off_t pos, int whence);
void lseek_file_relative(int fd, off_t pos, int whence, uint32_t expected_type);

int asserted_open(const char* filename, int perms, int* mode){
    int fd;
    if(mode){
        fd = open(filename, perms, mode);
    }else{
        fd = open(filename, perms);
    }
    if(fd < 0){
        err(1, "Something went wrong while openning %s", filename);
    }
    return fd;
}

void asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(2, "Error while reading from %d", fd);
    }
}

off_t asserted_lseek(int fd, off_t pos, int whence){
    off_t l =  lseek(fd , pos, whence);
    if(l < 0){
        err(3, "Something went wrong while lseeking");
    }
    return l;
}

uint32_t get_file_count(int fd, uint32_t expected_type){
    uint16_t magic;
    uint16_t file_type;
    uint32_t count;
    asserted_read(fd, (void*)&magic, sizeof(magic));
    asserted_read(fd, (void*)&file_type, sizeof(file_type));
    asserted_read(fd, (void*)&count, sizeof(count));
    
    if(magic != 0x5A4D){
        errx(1, "Invalid magic");
    }
    if(expected_type != file_type){ 
        errx(2, "The file type is invalid");
    }
    return count;
}
void lseek_file_relative(int fd, off_t pos, int whence, uint32_t expected_type){
    get_file_count(fd, expected_type); // местя всеки път до числата след хедъра(правя всеки път проверка, което е кофти, но такъв е живота)
    asserted_lseek(fd, pos, whence);
}

int main(int argc, char* argv[]){
    if(argc != 4){
        errx(1, "The argument count must be 3");
    }
    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_RDONLY, NULL);
    int fd3 = asserted_open(argv[3], O_WRONLY | O_TRUNC | O_CREAT, (int*)0666);
    uint32_t list_file_count = get_file_count(fd1, 1);
    for(uint32_t i = 0; i < list_file_count; i++){
        uint16_t position;
        uint64_t value;
        uint32_t current_number;

        asserted_read(fd1, &position, sizeof(position));
        asserted_read(fd1, &value, sizeof(value));

        asserted_lseek(fd2, 8 + position * sizeof(uint32_t), SEEK_SET);
        asserted_read(fd2, &current_number, sizeof(current_number));
        asserted_lseek(fd3, 8 + current_number * sizeof(uint64_t), SEEK_SET);
        if(write(fd3, &current_number , sizeof(current_number)) < 0){
           err(4, "Something went wrong while writing");
        }
        asserted_lseek(fd3, 0 , SEEK_SET);
    }
    close(fd1);
    close(fd2);
    close(fd3);
}


