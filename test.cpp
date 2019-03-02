#include "bitstuff_bit_cast.h"
#include <iostream>
#include <cstdint>
using namespace std;

void do_fastest_bit_cast()
{
	asm("# BEGIN FASTEST BIT CAST");
	swoope::bit_cast<uintptr_t>(&cin);
	asm("# END FASTEST BIT CAST");
}

void do_fast_bit_cast()
{
	asm("# BEGIN FAST BIT CAST");
	swoope::bit_cast<float>(static_cast<uint32_t>(0x3e200000));
	asm("# END FAST BIT CAST");
}

void do_bit_cast()
{
	struct T { unsigned char data[1024]; };
	struct U { unsigned char data[1024]; };
	T x;
	asm("# BEGIN BIT CAST");
	swoope::bit_cast<U>(x);
	asm("# END BIT CAST");
}

int main()
{
	do_fastest_bit_cast();
	do_fast_bit_cast();
	do_bit_cast();
}
