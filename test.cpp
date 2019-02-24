#include "bitstuff_bit_cast.h"
#include <iostream>
#include <cstdint>
#include <bitset>
#include <iomanip>
#include <utility>
using namespace std;

const size_t large_object_size = 1024;

struct T { unsigned char data[large_object_size]; };
struct U { unsigned char data[large_object_size]; };
T large_object;

void do_fastest_bit_cast()
{
	asm("# BEGIN FASTEST BYTE CAST");
	swoope::bit_cast<uintptr_t>(&cin);
	asm("# END FASTEST BYTE CAST");
}

void do_fast_bit_cast()
{
	asm("# BEGIN FAST BYTE CAST");
	swoope::bit_cast<uint32_t>(0.156225f);
	asm("# END FAST BYTE CAST");
}

void do_bit_cast()
{
	asm("# BEGIN BYTE CAST");
	swoope::bit_cast<U>(large_object);
	asm("# END BYTE CAST");
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
