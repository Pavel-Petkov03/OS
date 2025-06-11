#include <fcntl.h>
#include <unistd.h>
#include <err.h>


void run_command(const char filename[]);
void run_command(const char filename[]){
    int fd = open(filename, O_RDONLY, 0644);
    if(fd < 0){
        err(1, "The file with name %s must be valid", filename);
    }
    char c;
    int bytes;
    while((bytes = read(fd, &c, 1)) > 0){
        write(1, &c,  1); //` ne mislq che ima smisul za proverki tuk
    }
}

int main(int argc, char* arr[]){
    int i;
    for(i = 1; i < argc; i++){
        run_command(arr[i]);
    }
}
