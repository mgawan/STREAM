CC = gcc
CFLAGS = -O2 -fopenmp

FC = gfortran
FFLAGS = -O2

all: streamf streamc

streamf: stream.f timer.o
	$(FC) $(FFLAGS) stream.f timer.o -o streamf
timer.o: timer.c 
	$(CC) -c timer.c
streamc: stream.c
	$(CC) $(CFLAGS) stream.c -o streamc

clean:
	rm -f streamf streamc *.o