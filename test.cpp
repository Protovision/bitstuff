#include "bitstuff_type_traits.h"
#include <iostream>
#include <cstdint>
using namespace std;

int main()
{
	/* Instantiated to use reinterpret_cast */
	cout << bitstuff::byte_cast<uintptr_t>(&cout) << endl;

	/* Instantiated to use std::memcpy */
	cout << bitstuff::byte_cast<uint64_t>(3.1415) << endl;
}
