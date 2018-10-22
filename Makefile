all: main func1.o func2.o main.o

main: main.o func1.o func2.o
	gcc -o main main.o func1.o func2.o

%.o: %.c
	gcc -c $< -o $@ 

clean:
	rm -rf *.o main
