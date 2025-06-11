#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>
#include <err.h>
#include <stdint.h>
int comparator(const void* lhs, const void* rhs);


int comparator(const void* lhs, const void* rhs){
    return *(const uint32_t*)lhs - *(const uint32_t*)rhs;
}

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(33, "Invalid arguments count");
    }
    int fd1 = open(argv[1], O_RDONLY);
    int fd2 = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0666 );

    if(fd1 < 0){
        err(1, "Something went wrong in read");
    }
    if(fd2 < 0){
        err(1, "Something went wrong in read");
    }
    uint32_t arr[4194304];
    uint32_t current;
    int index = 0;
    int bytes;
    while ((bytes = read(fd1, &current, sizeof(current))) > 0){
        arr[index] = current;
        index++;
    }
    if(bytes < 0){
        err(1, "Something went wrong in read");
    }
    qsort(arr, index, sizeof(uint32_t), comparator);
    if(write(fd2, arr, index * sizeof(uint32_t)) < 0){
        err(1, "Something went wrong in write");
    }
    close(fd1);
    close(fd2);
}
