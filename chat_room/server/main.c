// server
#include "../asserted.h"
#include <fcntl.h>
#include <unistd.h>
#include <err.h>
#include <stdio.h>
#include <stddef.h>
#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <sys/file.h>
#include <sys/stat.h>
#include <signal.h>


#define SERVER_PIPE_CHAT "../tmp/__server"
#define SERVER_USERNAME_DATABASE "../database.txt"
#define MAX_USERNAME_LEN 1024
#define MAX_FIFO_LEN 1050
#define MAX_MESSAGE_LEN 1024
#define SERVER_TO_CLIENT "../tmp/server_to_client/"
#define CLIENT_TO_SERVER "../tmp/client_to_server/"

void broadcast_message(const char* message, const char* sender_username);
void handle_client(int database_fd, const char* username);
void add_user(int database_fd, const char* username);
void remove_user(int database_fd, const char* username);
bool user_in_database(const char* username);
bool readline(int fd, char* buffer);

void get_output_client_buffer(const char* username, char* fifo_buffer);
void get_input_client_buffer(const char* username, char* fifo_buffer);

void handle_signal(int sig);


void get_input_client_buffer(const char* username, char* fifo_buffer){
    snprintf(fifo_buffer, MAX_FIFO_LEN, "%s%s", CLIENT_TO_SERVER, username);
}

void get_output_client_buffer(const char* username, char* fifo_buffer){
    snprintf(fifo_buffer, MAX_FIFO_LEN, "%s%s", SERVER_TO_CLIENT, username);
}


void handle_signal(int sig){
    pid_t pid = asserted_fork();
    if(pid == 0){
        execlp("sh", "sh", "-c", "rm -f ../tmp/server_to_client/*", (char*)NULL);
    }
    
    pid_t pid2 = asserted_fork();
    if(pid2 == 0){
        execlp("sh", "sh", "-c", "rm -f ../tmp/client_to_server/*", (char*)NULL);
    }
    execlp("rm", "rm", "../tmp/__server", (char*)NULL);
}


bool readline(int fd, char* buffer){
    int index = 0;
    char c; 
    while(asserted_read(fd, &c, 1) == 1){
        if(c == '\n'){  
            break;
        }
        buffer[index++] = c;
    }
    buffer[index] = '\0';
    return index != 0;
}

void broadcast_message(const char* message, const char* sender_username){
    // ще пратя на всички вкючително и себе си
    int database_fd = asserted_open(SERVER_USERNAME_DATABASE, O_RDONLY, NULL);
    char username[MAX_USERNAME_LEN];
    while(readline(database_fd, username)){
        char fifo_string[MAX_FIFO_LEN];
        get_output_client_buffer(username, fifo_string);
        int current_fd = asserted_open(fifo_string, O_WRONLY , NULL);
        char final_message[MAX_MESSAGE_LEN + 40];
        snprintf(final_message, MAX_MESSAGE_LEN + 40, "[User %s]: %s", sender_username, message);
        asserted_write(current_fd, final_message, strlen(final_message));
        close(current_fd);
    }
}


void handle_client(int database_fd, const char* username){
    char fifo_name[MAX_FIFO_LEN];
    get_input_client_buffer(username, fifo_name);
    while(true){
        char message[MAX_MESSAGE_LEN];
        int fd = asserted_open(fifo_name, O_RDONLY, NULL);
        ssize_t bytes = asserted_read(fd, message, sizeof(message));
        message[bytes] = '\0';
        close(fd);
        if(bytes == 0){
            char remove_message[MAX_MESSAGE_LEN + 40];
            snprintf(remove_message, sizeof(remove_message), "[USERNAME: %s disconnected from the chat]\n", username);
            broadcast_message(remove_message, username);
            remove_user(database_fd, username);
            return;
        }
        broadcast_message(message, username);
    }
}


void add_user(int database_fd, const char* username){
    flock(database_fd, LOCK_EX); // mutex (ppc vmesto mutex moga da si igraq s dve trubi da se chakat ama ne mi se zanimava)
    asserted_lseek(database_fd, 0, SEEK_END);
    asserted_write(database_fd, username, strlen(username));
    asserted_write(database_fd, "\n", 1);
    flock(database_fd, LOCK_UN); 
}

void remove_user(int database_fd, const char* username){
    flock(database_fd, LOCK_EX);
    asserted_lseek(database_fd, 0, SEEK_SET);
    int len = strlen(username);
    char current_buffer[MAX_USERNAME_LEN];
    while(readline(database_fd, current_buffer)){
        if(!strncmp(username, current_buffer, len)){
            continue;
        }
        asserted_write(database_fd, current_buffer, strlen(current_buffer));
        asserted_write(database_fd, "\n", 1);
    }
    char input_client_buffer[MAX_FIFO_LEN];
    char output_client_buffer[MAX_FIFO_LEN];
    get_output_client_buffer(username, output_client_buffer);
    get_input_client_buffer(username, input_client_buffer);
    unlink(input_client_buffer);
    unlink(output_client_buffer);
    flock(database_fd, LOCK_UN);
}

bool user_in_database(const char* username){
    char buffer[MAX_USERNAME_LEN];
    int database_fd = asserted_open(SERVER_USERNAME_DATABASE, O_RDONLY, NULL);
    int len = strlen(username);
    while(readline(database_fd, buffer)){
        if(!strncmp(username, buffer, len)){
            return true;
        }
    }
    return false;
}

int main(void){
    signal(SIGINT, handle_signal);
    int database_fd = asserted_open(SERVER_USERNAME_DATABASE, O_RDWR | O_TRUNC | O_CREAT, (int*)0666);
    mode_t current_mask = umask(0);
    if(mkfifo(SERVER_PIPE_CHAT, 0777) < 0){
        err(1, "Something went wrong in mkfifo");
    }
    umask(current_mask);

    const char* start_message = "[CONNECTED TO LOCAL SERVER]\n";
    asserted_write(1, start_message , strlen(start_message));


    while(true){
        char username[MAX_USERNAME_LEN]; 
        int server_fd = asserted_open(SERVER_PIPE_CHAT, O_RDONLY, NULL);
        int bytes = asserted_read(server_fd, username, sizeof(username));
        username[bytes] = '\0';
        close(server_fd);
        if(!user_in_database(username)){
            char add_message[MAX_USERNAME_LEN + 40];
            snprintf(add_message, sizeof(add_message), "[USERNAME: %s connected to the chat]\n", username);
            asserted_write(1, add_message, strlen(add_message));
            add_user(database_fd, username);
            broadcast_message(add_message, username);
        }
        pid_t pid = asserted_fork();
        if(pid == 0){
            handle_client(database_fd , username);
            exit(0);
        }
    }
}

