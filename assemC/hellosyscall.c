/* hello.c
 * gcc hello.c -o hello
 * ./hello
 * echo $?
 */ 

#include <stdlib.h>

int main ()
{
    write (1, "System Call!\n" , 13);
    exit(42);
}

