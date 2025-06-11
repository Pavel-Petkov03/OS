#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <sys/stat.h>
#include <stdint.h>
#include <sys/param.h>

int asserted_open(const char* filename, int flags, int* mode);
int asserted_write(int fd, const void* buffer, ssize_t size);
int asserted_read(int fd, void* buffer, ssize_t size);
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
    off_t current_offset = lseek(fd, offset, whence);
    if(current_offset < 0){
        err(4, "Something went wrong in offset");
    }
    return current_offset;
}
#define U 16

typedef struct {
    uint64_t magic;
    uint32_t cfsb;
    uint32_t cfsu;
    uint32_t ofsb;
    uint32_t ofsu;
    uint32_t unused1;
    uint32_t checksum;
    uint8_t section_key[16];
    uint32_t slots[4];
} Header;

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(1, "Invalid argument count");
    }

    int fd1 = asserted_open(argv[1], O_RDONLY, NULL);
    int fd2 = asserted_open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, (int*)0666);
    Header current;
    struct stat info;
    uint32_t track_ofsu = 0;
    asserted_read(fd1, (void*)&current, sizeof(current));

    if(current.magic != 0x0000534f44614c47){
        errx(2, "Magic is invalid");
    }
    else if(fstat(fd1, &info) < 0){
        err(5, "Something went wrong in fstat");
    }
    else if(info.st_size != current.cfsb){
        errx(3, "Invalid cfsb");
    }else if(current.cfsb / 16 != current.cfsu){
        errx(4, "Invalid cfsu");
    }

    for(int i = 0; i < 4; i++){
        if(current.slots[i] > 0){
            uint8_t bytes[16];
            uint8_t data_key[16];
            asserted_lseek(fd1, U * current.slots[i], SEEK_SET);
            asserted_read(fd1, (void*)bytes, sizeof(bytes));
            asserted_read(fd1, (void*)data_key, sizeof(data_key));
            for (int j = 0; j < 16; j++){
                bytes[j] ^= current.section_key[j];
                data_key[j] ^= current.section_key[j];
            }
            uint64_t relative_offset = *(uint64_t*)(bytes);
            uint64_t len = *(uint64_t*)(bytes + 8);
            track_ofsu += len;

            asserted_lseek(fd1, U * relative_offset, SEEK_CUR);
            uint8_t cryptdata[16];
            for(int _ = 0; _ < len; _++){
                current.ofsb -= 16;
                ssize_t available_bytes = MIN(16, current.ofsb);
                asserted_read(fd1, (void*)cryptdata, available_bytes);
                for(int j = 0; j < 16; j++){
                    cryptdata[j] ^= data_key[j];
                }
                asserted_write(fd2, (const void*)cryptdata, available_bytes);
            }
        }
    }
    close(fd1);
    close(fd2);
}



