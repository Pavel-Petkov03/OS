

// ps aux | awk -F " " -v "current=$(whoami)" '{if(current == $1) {print $2}}' | xargs kill
// pskill -u <username>
// passwd -l <username>
// тая задача без права просто няма как да се направи адекватно
// иначе трябва да се правят форкове за поцесите във принтовете
#include <stdio.h>
#include <pwd.h>
#include <stdlib.h>
#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <pwd.h>
#include <string.h>
#include <time.h>

#define LOG_FILE "foo.log"
int asserted_write(int fd, const void* buffer, ssize_t size);


int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(4, "Something went wrong in write");
    }
    return bytes;
}

int main(int argc, char* argv[]) {
    if(argc < 2){
        errx(1, "The arguments count must be atlest 1");
    }
    
    int fd = open(LOG_FILE, O_WRONLY | O_CREAT | O_APPEND, 0666);
    if(fd < 0){
        err(2, "Something went wrong in open");
    }
    uid_t uid = getuid();
    struct passwd* pass_obj = getpwuid(uid);
    time_t current = time(NULL);
    struct tm* timeinfo = localtime(&current);
    char* username = pass_obj->pw_name;  
    
    char time_buffer[100];
    strftime(time_buffer, sizeof(time_buffer), "%D ", timeinfo); // мързи ме да слагам точният формат
    asserted_write(fd, time_buffer, strlen(time_buffer));
    asserted_write(fd, username, strlen(username));
    asserted_write(fd, " ", 1);
    for(int i = 0; i < argc; i++){
        asserted_write(fd, argv[i], strlen(argv[i]));
        if(i != argc -1){
            asserted_write(fd, " ", 1);
        }
    }
    asserted_write(fd, "\n", 1);
    char buffer1[50];
    char buffer2[50];

    snprintf(buffer1, sizeof(buffer1), "passwd -l %s\n", username);
    snprintf(buffer2, sizeof(buffer2), "pkill -u %s\n", username);

    asserted_write(1, buffer1, strlen(buffer1));
    asserted_write(1, buffer2, strlen(buffer2));
}
