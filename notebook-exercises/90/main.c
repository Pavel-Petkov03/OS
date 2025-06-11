#include <err.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>

#define MAX_RECORDS_COUNT 16384
#define MAX_USERS_COUNT 2048

typedef struct {
    uint32_t user_id;
    uint16_t reserved1;
    uint16_t reserved2;
    uint32_t start;
    uint32_t end;
} Record;

typedef struct {
    uint32_t user_id;
    uint32_t longest_session;
    bool has_bigger_session_than_D;
} User;

int find_user_by_id(const User* users, ssize_t size, uint32_t id);

int find_user_by_id(const User* users, ssize_t size, uint32_t id){
    for (int i = 0; i < size; i++){
        if(users[i].user_id == id){
            return i;
        }
    }
    return -1;
 }

int main(int argc, char* argv[]){
    if(argc != 2){
        errx(1, "Invalid arguments count");
    }
    int fd = open(argv[1], O_RDONLY);
    if(fd < 0){
        err(1, "Something went wrong in open");
    }
    User users[MAX_USERS_COUNT];
    Record records[MAX_RECORDS_COUNT];
    Record current_record;
    int bytes;
    int records_len = 0;
    while((bytes = read(fd, &current_record, sizeof(current_record))) > 0){
        records[records_len] = current_record;
        records_len++;
    }
    int D = 0;
    int average = 0;
    for(int i = 0; i < records_len; i++){
        average += records[i].end - records[i].start;
    }
    average /= records_len;
    for (int i = 0; i < records_len; i++){
        D += records[i].end - records[i].start - average;
    }
    D /= records_len;
    int users_len = 0;
    for (int i = 0; i < records_len; i++){
        User current_user;
        int found_index  = find_user_by_id(users, users_len, records[i].user_id);
        if(found_index == -1){
            current_user.user_id = records[i].user_id;
            current_user.longest_session = records[i].end - records[i].start;
            if((records[i].end - records[i].start) * (records[i].end - records[i].start) > D ){
                current_user.has_bigger_session_than_D = true;
            }
            users[users_len] = current_user;
            users_len++;
        }else if(users[found_index].longest_session < records[i].end - records[i].start){
            users[found_index].longest_session = records[i].end - records[i].start;
            if((records[i].end - records[i].start) * (records[i].end - records[i].start) > D ){
                users[found_index].has_bigger_session_than_D = true;
            }
        }
    }

    for(int i = 0; i < users_len; i++){
        if(users[i].has_bigger_session_than_D){
            char buffer[1000];
            snprintf(buffer, sizeof(buffer), "User id: %d: longest session %d\n", users[i].user_id, users[i].longest_session);
            if(write(1, buffer, strlen(buffer) + 1) < 0){
                err(5, "Something went wrong in write");
            }
        }
    }
    close(fd);
}

