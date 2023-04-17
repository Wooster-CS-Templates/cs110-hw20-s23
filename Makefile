CFLAGS=-std=c99 -Wall
CC=gcc

filesum: file_integer_sum.c
	$(CC) $(CFLAGS) file_integer_sum.c -o filesum

test: filesum
	./test-filesum.sh

gh-test-filesum: clean filesum test

clean:
	rm -f filesum *.o a.out
	rm -rf tests-out