
#include <stdio.h>
#include <unistd.h>
#include <string.h>

int main(int argc, char ** argv)
{
  char * msg = "Hello world!\n";

  long len = strlen(msg);

  __asm__(
     "mov 	rdi, 1;"
     "mov 	rax, 1;"
     "mov	rsi, %0;"
     "mov 	rdx, %1;"
     "syscall;"
     : 
     : "r" (msg), "r" (len)
     : "rdi","rax"
     
  );

  return 0;
}
