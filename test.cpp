#include "bitstuff_type_traits.h"
#include <iostream>
#include <cstdint>
#include <cmath>
using namespace std;
using namespace bitstuff;

struct T { unsigned char data[256]; };
struct U { unsigned char data[256]; };

T a;
U b;

int main()
{
	/* 
	 * Selects the overload that accepts it's argument by copy and performs 
	 * reinterpret_cast.
	 */
	cout << "Address of std::cout in decimal: " <<
		byte_cast<uintptr_t>(&cout) << endl;

	/*
	 * Selects the overload that accepts it's argument by copy and performs
	 * std::memcpy.
	 */
	cout << "3.1415 represented in uint64_t: " <<
		byte_cast<uint64_t>(3.1415) << endl;

	/*
	 * Selects the overload that accepts it's argument by lvalue reference 
	 * and performs std::memcpy.
	 */
	a = byte_cast<T>(b);

	float f = 156.25f;
	cout << "156.25f is equal to 1.5625f * 10^" <<
		round(log10(
			pow(2.0f, ((byte_cast<int32_t>(f) >> 23) & 0b11111111) - 127)
		)) << endl;


}
