//malloc1.c
#include <stdlib.h>
#include <stdio.h>

int main(void)
{
char *some_mem;
int size1=1048576;
some_mem=(char *)malloc(size1);
printf("Malloed 1M Memory!\n");
free(some_mem);
exit(EXIT_SUCCESS);
}

//END
