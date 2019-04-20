/* hello.c
 * gcc hello.c -o hello
 * ./hello
 * echo $?
 */ 

#include <stdlib.h>

int main ()
{
    puts("Library Call!");
    exit(42);
}

