#include <stdio.h>

int main(void) {
    int *ptr = NULL;
    *ptr = 42;  // This causes the segmentation fault
    return 0;
}
