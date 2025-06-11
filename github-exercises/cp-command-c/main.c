#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <err.h>

int main(int argc, char* arr[]) {
    if (argc != 3) {
        err(1, "The arguments count must be 2");
    }

    int fd1 = open(arr[1], O_RDONLY);
    if (fd1 < 0) {
        err(1, "The first argument must be a valid file");
    }

    int fd2 = open(arr[2], O_WRONLY | O_CREAT, 0644);
    if (fd2 < 0) {
        err(1, "The second file couldn't be opened/created");
    }

    char c;
    int num_bytes;
    while ((num_bytes = read(fd1, &c, 1)) > 0) {
        if (write(fd2, &c, 1) != 1) {
            err(1, "Error writing to file");
        }
    }

    if (num_bytes < 0) {
        err(1, "Error reading from file");
    }

    if (close(fd1) < 0 || close(fd2) < 0) {
        err(1, "Some of the files can't be closed");
    }

    return 0;
}
