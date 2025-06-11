#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <err.h>


// мисля че я оправим ама може да има грешки

void replace_in_text(char* buffer, ssize_t* buffer_len , char from, char to, int mode);

void replace_in_text(char* buffer, ssize_t* buffer_len , char from, char to, int mode){ // 0 -> -d, 1 -> -s, 2 -> else
    char new_buffer[1024];
    if(mode == 0){
        int i = 0;
        int j = 0;
        while(i < *buffer_len){
            if(buffer[i] != from){
                new_buffer[j] = buffer[i];
                j++;
            }
            i++;
        }
        *buffer_len = j;
        strncpy(buffer, new_buffer, j);
        buffer[j] = '\0';
    }else if(mode == 1){
        int i = 0; 
        int j = 0;
        while(i < *buffer_len){
            new_buffer[j] = buffer[i];
            while(i < *buffer_len && buffer[i] == from){
                i++;
            }
            i++;
            j++;
        }
        *buffer_len = j;
        strncpy(buffer, new_buffer, j);
        buffer[j] = '\0';
    }else if(mode == 2){
        for(int i = 0; i < *buffer_len; i++){
            if(buffer[i] == from){
                buffer[i] = to;
            }
        }
    }
}

int main(int argc, char* argv[]){
    char buffer[1024];
    ssize_t bytes_read = read(0, buffer, sizeof(buffer));
    if(bytes_read < 0){
        err(1, "Something went wrong in write");
    }
    ssize_t len = bytes_read;
    if(!strcmp(argv[1], "-d")){
        for(int i = 0; i < len; i++){
             replace_in_text(buffer, &len ,argv[2][i], 'k', 0);
        }
    }else if(!strcmp(argv[1], "-s")){
        for(int i = 0; i < len; i++){
            replace_in_text(buffer, &len , argv[2][i], 'k', 1);
        }
    }else{
        int first_len = strlen(argv[1]);
        int second_len = strlen(argv[2]);
        if(first_len != second_len){
            errx(1, "Cannot SET1 and SET2 to have different length");
         }
        for(int i = 0; i < first_len; i++){
            replace_in_text(buffer, &len , argv[1][i], argv[2][i], 2);
         }
    }
    if(write(1, buffer, len) < 0){
        err(4, "Something went wrong in write");
    }
}
