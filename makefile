CFLAGS += -Wall -O0 -g -DNDEBUG
test: coro.o main.o
	g++ coro.o main.o $(CFLAGS) -o test

clean:
	rm -rf *.o test
