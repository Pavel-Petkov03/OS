#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <err.h>
#include <stdio.h>
#include <sys/wait.h>


int asserted_read(int fd, void* buffer, ssize_t size);
int asserted_write(int fd, const void* buffer, ssize_t size);


int asserted_read(int fd, void* buffer, ssize_t size){
    int bytes = read(fd, buffer, size);
    if(bytes < 0){
        err(1, "something went wrong in read");
    }
    return bytes;
}

int asserted_write(int fd, const void* buffer, ssize_t size){
    int bytes = write(fd, buffer, size);
    if(bytes < 0){
        err(1, "something went wrong in read");
    }
    return bytes;
}

int main(void){
    char buffer[1024];
    asserted_write(1, ">>>", 4);
    int len = asserted_read(0, (char*)buffer, sizeof(buffer));
    while(strncmp("exit" , buffer, 4) != 0){
        pid_t pid = fork();
        if(pid == 0){
            char command[2048];
            snprintf(command, len, "%s", buffer);
            execl(command, command, (char*)NULL);
        }
        wait(NULL);
        asserted_write(1, ">>>", 4);
        len = asserted_read(0, buffer, sizeof(buffer));
    }
}
