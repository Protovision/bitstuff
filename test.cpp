#include "bitstuff_bit_cast.h"
#include <iostream>
#include <cstdint>
#include <bitset>
#include <iomanip>
#include <utility>
#include <cstring>
using namespace std;

struct T { unsigned char data[1024]; };
struct U { unsigned char data[1024]; };
T large_object;

void do_fastest_bit_cast()
{
	asm("# BEGIN FASTEST BIT CAST");
	swoope::bit_cast<uintptr_t>(&cin);
	asm("# END FASTEST BIT CAST");
}

void do_fast_bit_cast()
{
	asm("# BEGIN FAST BIT CAST");
	swoope::bit_cast<uint32_t>(0.156225f);
	asm("# END FAST BIT CAST");
}

void do_bit_cast()
{
	asm("# BEGIN BIT CAST");
	swoope::bit_cast<U>(large_object);
	asm("# END BIT CAST");
	
}

int main()
{
	do_fastest_bit_cast();
	do_fast_bit_cast();
	do_bit_cast();

	cout << 
	swoope::bit_cast<uintptr_t>(nullptr) << endl <<
	swoope::bit_cast<float>(0b00111110001000000000000000000000) << endl <<
	std::bitset<32>(swoope::bit_cast<uint32_t>(0.15625f)) << endl <<
	std::hex << swoope::bit_cast<uint64_t>(9.81) << endl;

}
