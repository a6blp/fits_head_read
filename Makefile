CPP = g++
CFLAGS = -Wall -lcfitsio

all: fitshead.o
	$(CPP) $(CFLAGS) fitshead.o -o fitshead

fitshead.o:
	$(CPP) $(CFLAGS) -c fitshead.cpp

clean: 
	rm fitshead fitshead.o
