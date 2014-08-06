CFLAGS += -Wall -O0 -g #-DNDEBUG
test: coro.o main.o
	gcc coro.o main.o $(CFLAGS) -o test

clean:
	rm -rf *.o test
