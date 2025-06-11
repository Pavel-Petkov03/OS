#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <sys/stat.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>



int asserted_open(const char* filename, int flags, int* mode);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);
void asserted_stat(int fd, struct stat* info);
char* get_description(int fd, int* len);
void get_word(int fd, char* word);



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
    int bytes = write(fd, buffer ,size);
    if(bytes < 0){
        err(2, "Something went wrong in write");
    }
    return bytes;
}

int asserted_read(int fd,  void* buffer, ssize_t size){
    int bytes = read(fd, buffer , size);
    if(bytes < 0){
        err(3, "Something went wrong in read");
    }
    return bytes;
}

off_t asserted_lseek(int fd,  off_t offset, int whence){
    off_t new_offset = lseek(fd, offset, whence);
    if(new_offset < 0){
        err(4, "Something went wrong in lseek");
    }
    return new_offset;
}

void asserted_stat(int fd, struct stat* info){
    if(fstat(fd, info) < 0){
        err(5, "Something went wrong in stat");
    }
}

char* get_description(int fd, int* len){
    char c;
    off_t last_pos = asserted_lseek(fd, 0, SEEK_CUR);
    while(asserted_read(fd, (void*)&c, 1) > 0){
        if(c == 0x00){
            break;
        }
        (*len)++;
    }
    char* description = (char*)malloc(*len);
    asserted_lseek(fd, last_pos, SEEK_SET);
    asserted_read(fd, (void*)description, *len);
    return description;
}

void get_word(int fd, char* word){
    char c;
    int i = 0;
    while(asserted_read(fd, (void*)&c, 1) > 0){
        if(c == '\n'){
            break;
        }
        word[i++] = c;
    }
}

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "Invalid arguments count");
    }
    const char* word = argv[1];
    int word_len = strlen(word);
    int fd1 = asserted_open(argv[2], O_RDONLY, (int*)0666);
    int left = 0;
    struct stat info;
    asserted_stat(fd1, &info);
    int right = info.st_size;
    while(left < right){
        int mid = (left + right) / 2;
        asserted_lseek(fd1, mid, SEEK_SET);
        char c;
        bool is_found = false;
        while(asserted_read(fd1, &c, 1) > 0){
            if(c != 0x00){
                continue;
            }
            char current_word[65];
            is_found = true;
            get_word(fd1, current_word);
            if(strncmp(word, current_word, word_len) == 0){
                while(asserted_read(fd1, (void*)&c, 1) > 0){
                    if(c == 0x00){
                        break;
                    }
                    asserted_write(1, (const void*)&c, 1);
                }
                close(fd1);
                return 0;
            }else if(strncmp(word, current_word, word_len) < 0){
                right = mid - 1;        
            }else{
                left = mid + 1;
            }
            break;
        }
        if(!is_found){
            asserted_write(1, (const void*)"No such word in the dictionary", 50);
            close(fd1);
            return 0;
        }
    }
}


