#include<iostream>
#include<CCfits/CCfits>

//using namespace CCfits;

int main(int argc, char** argv){
	const string filename = *(argv+1);
	std::auto_ptr<CCfits::FITS> input_file(new CCfits::FITS(filename, CCfits::Read));
	CCfits::PHDU& header = input_file->pHDU();
	header.readAllKeys();
	std::cout << header << std::endl;
	return 0;
	}
