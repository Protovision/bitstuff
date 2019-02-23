#include "bitstuff_byte_cast.h"
#include <iostream>
#include <cstdint>
#include <bitset>
#include <iomanip>
#include <utility>
using namespace std;

struct T { unsigned char data[256]; };
struct U { unsigned char data[256]; };
T large_object;

void do_fastest_byte_cast()
{
	asm("# BEGIN FASTEST BYTE CAST");
	swoope::byte_cast<uintptr_t>(&cin);
	asm("# END FASTEST BYTE CAST");
}

void do_fast_byte_cast()
{
	asm("# BEGIN FAST BYTE CAST");
	swoope::byte_cast<uint32_t>(0.156225f);
	asm("# END FAST BYTE CAST");
}

void do_byte_cast()
{
	asm("# BEGIN BYTE CAST");
	swoope::byte_cast<U>(large_object);
	asm("# END BYTE CAST");
}

int main()
{
	do_fastest_byte_cast();
	do_fast_byte_cast();
	do_byte_cast();

	cout << 
	swoope::byte_cast<uintptr_t>(nullptr) << endl <<
	swoope::byte_cast<float>(0b00111110001000000000000000000000) << endl <<
	std::bitset<32>(swoope::byte_cast<uint32_t>(0.15625f)) << endl <<
	std::hex << swoope::byte_cast<uint64_t>(9.81) << endl;

}
