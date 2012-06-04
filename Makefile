CPP = g++
CPPFLAGS = -Wall 
CPPLIBS = -lCCfits

all: fitshead
fitshead: fitshead.o
	$(CPP) $(CPPFLAGS) -o $@ fitshead.o $(CPPLIBS)
clean: 
	rm -rf a.out fitshead *.o

