
CC=gcc
CFLAGS=-Wall -std=c99
all: first

first: first.o

first.o: first.c

clean:
	rm -f first first.o

run: first

	./first
