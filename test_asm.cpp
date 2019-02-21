/*
 * g++ -S test.cpp
 * Watch the generated assembly code
 */
#include "bitstuff_type_traits.h"
#include <iostream>
#include <cstdint>
using namespace std;
using namespace bitstuff;

struct T { unsigned char data[1024]; };
struct U { unsigned char data[1024]; };

T large_object;

void do_fastest_byte_cast()
{
	asm("# BEGIN GENERATED ASM FOR: byte_cast<uintptr_t>(&cin);");
	byte_cast<uintptr_t>(&cin);
	asm("# END GENERATED ASM");
}

void do_pretty_fast_byte_cast()
{
	asm("# BEGIN GENERATED ASM FOR: byte_cast<uint32_t>(9.81f);");
	byte_cast<uint32_t>(9.81f);
	asm("# END GENERATED ASM");
}

void do_not_as_fast_byte_cast()
{
	asm("# BEGIN GENERATED ASM FOR: byte_cast<U>(large_object);");
	byte_cast<U>(large_object);
	asm("# END GENERATED ASM");
}

int main()
{
	do_fastest_byte_cast();
	do_pretty_fast_byte_cast();
	do_not_as_fast_byte_cast();
}
