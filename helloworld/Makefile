all: bin/hello1 bin/hello2

bin/hello1: tmp/hello1.o
	ld -e _start -o bin/hello1 tmp/hello1.o	

tmp/hello1.o: src/hello1.asm 
	nasm -f elf64 src/hello1.asm -o tmp/hello1.o

bin/hello2: src/hello2.c
	gcc -o bin/hello2 -masm=intel src/hello2.c 

clean: 
	rm -rf tmp/hello1.o bin/hello1
	rm -rf bin/hello2






  
