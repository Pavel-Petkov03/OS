#include <stdint.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <err.h>
#include <limits.h>

int get_file_size(int fd);
uint16_t* get_numbers(int fd, int bytes);
uint16_t get_max(const uint16_t* numbers, size_t l);
uint16_t get_min(const uint16_t* numbers, size_t l);

int get_file_size(int fd){
    int counter = 0;
    char buffer[1024];
    int bytes;
    while((bytes = read(fd, buffer, 1024) > 0)){
        counter += bytes;
    }   
    lseek(fd, 0, SEEK_SET);
    return counter;
}

uint16_t* get_numbers(int fd, int bytes){
    uint16_t* numbers = (int*)malloc(bytes);
    for(int i =0; i < bytes / sizeof(uint16_t); i++){
        read(fd, numbers[i], sizeof(uint16_t));
    }
    return numbers;
}


uint16_t get_min(const uint16_t* numbers, size_t len){
    uint16_t current = UINT_MAX;
    for(int i = 0; i < len; i++){
        if(numbers[i] < current){
            current = numbers[i];
        }
    }
    return current;
}

uint16_t get_max(const uint16_t* numbers, size_t len){
    uint16_t current = 0;
    for(int i = 0; i < len; i++){
        if(numbers[i] > current){
            current = numbers[i];
        }
    }
    return current;
}

int main(int argc, char* argv[]){
    if(argc != 3){
        err(1, "The arguments count must be 2");
    }
    int fd = open(argv[2], O_RDONLY,0644);
    if(fd < 0){
        err(1, "The file must exist");
    }
    int n = get_file_size(fd);
    uint16_t* numbers = get_numbers(fd, n);
    char buffer[1024];
    if(!strcmp(argv[1], "--min")){
        int len = snprintf(buffer, sizeof(buffer), "The max number in the array is %d\n", get_min(numbers, n));
        write(1, buffer, len);
    }else if(!strcmp(argv[1], "--max")){
        int len = snprintf(buffer, sizeof(buffer), "The min number in the array is %d\n", get_max(numbers, n));
        write(1, buffer, len);
    }else if(!strcmp(argv[1], "--print")){
        write(1, "posle", 6);    
    }else{
        free(numbers);
        err(1, "The command must be betewen --min , --max, --print");
    }
    free(numbers);
}
