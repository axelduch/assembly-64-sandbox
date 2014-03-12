many-arguments.o:
	nasm -g -f elf64 -o many-arguments.o many-arguments.asm

many-arguments-test.o:
	g++ -c -Wall -Wextra -o many-arguments-test.o many-arguments-test.cpp

many-arguments:
	g++ -o many-arguments many-arguments-test.o many-arguments.o

all:
	make many-arguments.o
	make many-arguments-test.o
	make many-arguments

clear:
	rm -f *.o
	rm -f many-arguments
