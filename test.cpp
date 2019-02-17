#include "Binteger.h"
#include <iostream>
#include <cstdint>
#include <string>
#include <iomanip>
#include <cmath>
using namespace std;

int main()
{
	Binteger<uint32_t> b;
	/* Building float value for 0.15625 */
	b[31] = 0;
	b[{30, 23}] = 0b01111100;
	b[{22, 0}] = (1 << 21);
	cout << "The binary value: " << b[{31, 0}] << endl <<
		"represents: " << b[{31, 0}].to<float>() << endl;
}
