#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <err.h>
#include <stdint.h>
#include <stdio.h>

int main(int argc, char* argv[]){
    if(argc != 3){
        errx(2, "The program must take exactly 2 arguments");
    }
    int fd1 = open(argv[1], O_RDONLY);
    if(fd1 < 0){
        err(1, "Something went wrong while openning file");
    }
    int fd2 = open(argv[2], O_WRONLY | O_TRUNC | O_CREAT, 0666);
    if(fd2 < 0){
        err(1, "Something went wrong while openning file");
    }

    char first_info[1048] = "const uint16_t arr[] = {";
    uint32_t counter = 0;
    int bytes;
    uint16_t num;
    while((bytes = read(fd1, &num, sizeof(num))) > 0){
        char buffer[6231];
        counter++;
        snprintf(buffer, sizeof(buffer), "%d,", num);
        strcat(first_info, buffer);        
    }
    strcat(first_info, "};\n");
    char second_info[100] = "const uint32_t arrN = ";
    char string_number[5123];
    snprintf(string_number, sizeof(string_number), "%d;\n", counter);
    strcat(second_info, string_number);
    char info[524288] = "#include<stdint.h>\n";
    strcat(info, first_info);
    strcat(info, second_info);

    if(write(fd2, info, strlen(info)) < 0){
        err(3, "Something went wrong while writing");
    }
    close(fd1);
    close(fd2); // трябва да посмятам колко точно трябва да заделя , но сега не ми се занимава затова числата са толкова рандом
}
