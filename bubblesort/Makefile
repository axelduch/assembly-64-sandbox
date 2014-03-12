bubblesort.o:
	nasm -g -f elf64 -o bubblesort.o bubblesort.asm
bubblesort-test.o:
	g++ -c -o bubblesort-test.o bubblesort-test.cpp
bubblesort-test:
	g++ bubblesort-test.o bubblesort.o -o bubblesort-test
all:
	make bubblesort.o
	make bubblesort-test.o
	make bubblesort-test
clear:
	rm -f *.o
	rm -f bubblesort-test
