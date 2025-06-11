//client
#include <stdbool.h>
#include <fcntl.h> 
#include <string.h>
#include <stdio.h>
#include "../asserted.h"
#include <sys/file.h>
#include <sys/stat.h>

#define SERVER_PIPE_CHAT "../tmp/__server"
#define SERVER_USERNAME_DATABASE "../database.txt"
#define MAX_USERNAME_LEN 1024
#define MAX_FIFO_LEN 1050
#define MAX_MESSAGE_LEN 1024
#define SERVER_TO_CLIENT "../tmp/server_to_client/"
#define CLIENT_TO_SERVER "../tmp/client_to_server/"


void get_output_server_buffer(const char* username, char* fifo_buffer);
void get_input_server_buffer(const char* username, char* fifo_buffer);


void get_input_server_buffer(const char* username, char* fifo_buffer){
    snprintf(fifo_buffer, MAX_FIFO_LEN, "%s%s", CLIENT_TO_SERVER, username);
}


void get_output_server_buffer(const char* username, char* fifo_buffer){
    snprintf(fifo_buffer, MAX_FIFO_LEN, "%s%s", SERVER_TO_CLIENT, username);
}


int main(int argc, char* argv[]){
    if(argc != 2){
        err(1, "The argument count muist be 1: the username");
    }

    const char* username = argv[1];
    char input_fifo[MAX_FIFO_LEN];
    char output_fifo[MAX_FIFO_LEN];
    get_output_server_buffer(username, input_fifo);
    get_input_server_buffer(username, output_fifo);
    mode_t old_mask = umask(0);
    if(mkfifo(input_fifo, 0777) < 0 || mkfifo(output_fifo, 0777) < 0){
        err(1, "Something went wrong in in mkfifo");
    }
    umask(old_mask);
    
    int server_fd = asserted_open(SERVER_PIPE_CHAT, O_WRONLY, NULL);
    asserted_write(server_fd, username, strlen(username));
    close(server_fd);

    pid_t pid = asserted_fork();
    if(pid == 0){
        while(true){
            char message[MAX_MESSAGE_LEN];
            int bytes = asserted_read(0, message, MAX_MESSAGE_LEN);
            int fdwrite = asserted_open(output_fifo, O_WRONLY, NULL);
            asserted_write(fdwrite, message, bytes);
            close(fdwrite);
        }
    }

    while(true){
            char message[MAX_MESSAGE_LEN];
            int fdread = asserted_open(input_fifo, O_RDONLY, NULL);
            int bytes = asserted_read(fdread, message, sizeof(message));
            asserted_write(1, message, bytes);
            close(fdread);
    }
}

