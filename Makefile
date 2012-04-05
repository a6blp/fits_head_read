CPP = g++
CFLAGS = -Wall
CLIB = -l CCfits

all: fitshead
fitshead: fitshead.o
	$(CPP) $(CFLAGS) $(CLIB) fitshead.o -o fitshead

fitshead.o: fitshead.cpp
	$(CPP) $(CFLAGS) -c fitshead.cpp

clean: 
	rm fitshead fitshead.o
