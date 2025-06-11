#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <err.h>

void asserted_write(int fd, const void* buffer, ssize_t size);
void extract_range(const char* str, int* start, int* end, ssize_t buffer_len);

void asserted_write(int fd, const void* buffer, ssize_t size){
    if(write(fd, buffer, size) < 0){    
        err(33, "Something went wrong in write");
    }
}

void extract_range(const char* str, int* start, int* end, ssize_t buffer_len){
     if(strlen(str) == 1){
        *start = (str[0] - '0');
        *end = *start;
    }else if(strlen(str) == 3 && str[1] == '-'){
        *start = (str[0] - '0');
        *end = (str[2] - '0');
        if(*end > buffer_len){
            *end = buffer_len;
        }
        if(*start > *end){
            errx(1, "start can't be bigger than end");
         }
    }
}

int main(int argc, char* argv[]){
    char buffer[1024];
    int bytes;
    while((bytes = read(1, buffer, 1024) ) > 0){
        int buffer_len = strlen(buffer);
        if(!strcmp(argv[1], "-c")){
            int start;
            int end;
            extract_range(argv[2], &start, &end, buffer_len);
            
            for(int i= start; i < end; i++){
                asserted_write(1, (const void*)&buffer[i], 1);
            }
            asserted_write(1, (const void*)"\n", 2);

        }else if(!strcmp(argv[1], "-d")){
            char delimiter = argv[2][0];
            if(!strcmp(argv[3], "-f")){
                int start;
                int end;
                extract_range(argv[4], &start, &end, buffer_len);
                int column_counter = 1;
                int i = 0;
                while(i <= buffer_len) {
                    if(column_counter >= start && column_counter <= end){
                        while(i <= buffer_len && buffer[i] != delimiter){
                            asserted_write(1, (const void*) &buffer[i], 1);
                            i++;
                        }
                        asserted_write(1, (const void*)" ", 2);
                    }
                    if(buffer[i] == delimiter){
                       column_counter++;
                    }
                    i++;
                }
                asserted_write(1, "\n", 2);
            }
        }     
    }
}
