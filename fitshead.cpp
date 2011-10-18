#include<iostream>
#include<fitsio.h>
int main(int argc, char** argv){
	fitsfile *fptr;
	char* filename = *(argv+1);
//	std::cout << filename << std::endl;
	int iomode = READONLY;
	int status;
	fftopn(&fptr, filename, iomode, &status);

	int hdunum;

//	int hh = ffghdn(fptr, &hdunum);
//	std::cout << hh << hdunum << std::endl;

	ffclos(fptr, &status);
	return 0;
	}
