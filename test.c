#include <stdio.h>
#include <string.h>

int main() {
    char buf[10];
    strcpy(buf, "Hello, World!");
    printf("%s\n", buf);
    return 0;
}

// gcc -o test test.c
// ./test