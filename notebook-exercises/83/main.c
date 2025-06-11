#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>



void read_from_stdin_counter(int* counter);
void read_from_stdin(void);
void read_from_file(void);
void read_from_file_counter(const char* filename, int* counter);
int asserted_open(const char* filename, int flags, int* mode);
int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t);


int asserted_open(const char* filename, int flags, int* mode){
    int fd;
    if(mode){
        fd = open(filename, flags, mode);
    } else{
        fd = open(filename, flags);
    }
    if(fd < 0){
        err(1, "Something went wrong in open");
    }
    return fd;
}

int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(2, "Something went wrong in read");
    }
    return bytes;
}

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(2, "Something went wrong in write");
    }
    return bytes;
}
void read_from_stdin_counter(int* counter){
    char buffer[1024];
    char num_buf[20];
    int bytes = asserted_read(0, (void*)buffer, 1024);
    snprintf(num_buf, sizeof(num_buf), "%d ", *counter);
    int num_bytes = asserted_write(1, num_buf, strlen(num_buf));
    char prev = 0;
    for(int i = 0; i < bytes; i++){
        if(prev == '\n'){
            snprintf(num_buf, sizeof(num_buf), "%d ", *counter);
            asserted_write(1, (const void*)num_buf, strlen(num_buf));
        }
        asserted_write(1, (const void*) &buffer[i], 1); 
        if(buffer[i] == '\n'){  
            (*counter)++;
        }
        prev = buffer[i];
    }
}

void read_from_file_counter(const char* filename, int* counter){
    int fd = asserted_open(filename, O_RDONLY, NULL);
    char c;
    int bytes;
    char num_buf[20];
    snprintf(num_buf, sizeof(num_buf), "%d ", *counter);
    asserted_write(1, (const void*)num_buf, strlen(num_buf));
    char prev_c = 0;
    while((bytes = read(fd, &c, 1)) == 1){
        if(prev_c == '\n'){
            snprintf(num_buf, sizeof(num_buf), "%d ", *counter);
            asserted_write(1, (const void*) num_buf, strlen(num_buf));
        }
        asserted_write(1, (const void*)&c, 1);
        if(c == '\n'){
            (*counter)++;
        }
        prev_c = c;
    }        
}
       

void read_from_stdin(void){
    char buffer[1024];
    int bytes = asserted_read(0, (void*)buffer, 1024);
    asserted_write(1, (const void*)buffer, bytes);    
}

int main(int argc, char* argv[]){
    if(argc >= 2 && !strcmp(argv[1], "-n")){
        int counter = 1;
        if(argc == 2){
            read_from_stdin_counter(&counter);
        }
        else{
            for(int i = 2; i < argc; i++){  
                if(!strcmp(argv[i], "-")){
                    read_from_stdin_counter(&counter);
                }else{
                    read_from_file_counter(argv[i], &counter);
                }
            }
        }
    }else{
        if(argc == 1){
            read_from_stdin();
        }else{
            for(int i = 1; i < argc; i++){
                if(!strcmp(argv[i], "-")){
                    read_from_stdin();
                }else{
                    int fd = asserted_open(argv[i], O_RDONLY, NULL);
                    char c;
                    int bytes;
                    while((bytes = read(fd, &c, 1)) > 0){
                        asserted_write(1, (const void*)&c, 1);
                    }
                }
            }
        }
    }
}
