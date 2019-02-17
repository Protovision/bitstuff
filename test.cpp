#include "Binteger.h"
#include <iostream>
#include <cstdint>
#include <string>
#include <iomanip>
using namespace std;

int main()
{
	Binteger<uint16_t> b;
	b[{15,11}] = 26;
	unsigned int i = b[{15,11}].to_trivial<unsigned int>();
	string s = b[{15,11}].to_string();
	cout << 
		s << endl <<
		showbase <<
		oct << i << endl <<
		dec << i << endl <<
		hex << i << endl;

		
}
