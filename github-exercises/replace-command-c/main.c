#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <err.h>

// идеята на този код е условието да направя replace от ":" към "?"

int get_bytes_count(int fd);
void get_substring(const char* str, int start, int length, char* result);


void get_substring(const char* str, int start, int length, char* result){
    strncpy(result, str + start, length);
    result[length] = '\0';
}
int get_bytes_count(int fd){
    char BUFFER[4096];
    int counter = 0;
    int bytes;
    while(( bytes = read(fd, BUFFER, 4096)) > 0){
        counter += bytes;
    }
    lseek(fd, 0, SEEK_SET);
    return counter;
}

int main(int argc, char* args[]){
    if(argc != 4){
        err(1, "The arguments count must be 3");
    }
    int fd = open(args[1], O_RDWR);
    if(fd < 0){
        err(1, "Cannot open file %s" , args[1]);
    }
    char replace_from[1024];
    char replace_to[1024];
    strcpy(replace_from , args[2]);
    strcpy(replace_to, args[3]);
    int file_bytes_count = get_bytes_count(fd);
    int index = 0;
    int seek_len = strlen(replace_from);
    char* check_string = (char*)malloc(seek_len + 1);
    char* whole_string = (char*)malloc(file_bytes_count + 1);
    if (read(fd, whole_string, file_bytes_count) < 0){
        free(check_string);
        free(whole_string);
        err(1, "Something went wrong");
    }

    lseek(fd, 0, SEEK_SET);

    while(index < file_bytes_count){
        get_substring(whole_string, index, seek_len, check_string);
        if(!strcmp(check_string, replace_from)){
            write(fd, replace_to, strlen(replace_to));
            index += seek_len;
        }else{
            write(fd, &whole_string[index], 1);
            index++;
        }
    }
    free(check_string);
    free(whole_string);
}
