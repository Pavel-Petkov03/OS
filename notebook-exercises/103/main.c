#include <fcntl.h>
#include <err.h>
#include <unistd.h>
#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

typedef struct {
    uint64_t next;
    char user_data [504];
} RECORD;

int asserted_read(int fd, void* buffer, size_t size);
int asserted_write(int fd, const void* buffer, size_t size);
off_t asserted_lseek(int fd, off_t offset, int whence);
bool is_in_temp(int fd, uint64_t to_find);


int asserted_read(int fd, void* buffer, size_t size){
    int bytes = read(fd, buffer, size); 
    if(bytes < 0){
        err(2, "Something went wrong in read ");
    }
    return bytes;
}
int asserted_write(int fd, const void* buffer, size_t size){
    int bytes = write(fd, buffer, size); 
    if(bytes < 0){
        err(2, "Something went wrong in write");
    }
    return bytes;
}

off_t asserted_lseek(int fd, off_t offset, int whence){
    off_t new_offset = lseek(fd, offset, whence);
    if(new_offset < 0){
        err(4, "Somethign went wrong in lseek");
    }
    return new_offset;
}

bool is_in_temp(int fd, uint64_t to_find){
    uint64_t seek; 
    while(asserted_read(fd, (void*)&seek, sizeof(seek)) > 0){
        if(to_find == seek){
            return true;
        }
    }
    return false;
}

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int fd1 = open(argv[1], O_RDWR);
    if(fd1 < 0){
        err(1, "Something went wrong in open");
    }
    char filename[] = "XXXXXX";
    int fd2 = mkstemp(filename);
    if(fd2 < 0){
        err(1, "Something went wrong in open");
    }
    RECORD current;
    while(asserted_read(fd1, &current, sizeof(current)) > 0){
        if(current.next == 0){
            break;
        }
        asserted_write(fd2, (const void*)&current.next, sizeof(current.next));
        asserted_lseek(fd1, current.next * sizeof(RECORD), SEEK_SET);
    }
    while(asserted_read(fd1, &current, sizeof(current)) > 0){
        bool is_found = is_in_temp(fd2, current.next);
        if(!is_found){
            off_t current_place = asserted_lseek(fd1, 0, SEEK_CUR);
            asserted_lseek(fd1, current_place - sizeof(current), SEEK_CUR);
            char buffer[sizeof(RECORD)];
            for(int i = 0; i < sizeof(RECORD); i++){
                buffer[i] = '\0';
            }
            asserted_write(fd1, (const void*)buffer, sizeof(buffer));
        }
    }
    close(fd1);

}
