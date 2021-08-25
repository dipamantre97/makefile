
CC=gcc
CFLAGS= -c -Wall 
test: main.o add.o sub.o
	$(CC) main.c add.c sub.c -o test

main.o: main.c
	$(CC) $(CFLAGS) main.c

add.o: add.c
	$(CC) $(CFLAGS) add.c

sub.o:	sub.c
	$(CC) $(CFLAGS) sub.c

clean:
	rm -f test
	rm -f *.o
