#ifndef BITSTUFF_MEMCPY_H
#define BITSTUFF_MEMCPY_H

/*
 * File: bitstuff_constexpr_memcpy.h
 * Author: Mark Swoope
 * Date: Februrary 24, 2019
 *
 * A portable constexpr memcpy for C++ (-fno-strict-aliasing):
 *
 *  template <std::size_t N>
 *	constexpr void* constexpr_memcpy(void* dst, const void* src);
 *
 */

#include <cstddef>
#include <climits>

namespace swoope {

	template <std::size_t N>
	[[gnu::always_inline]] inline
	constexpr typename std::enable_if<N == 0>::type*
	constexpr_memcpy(void* dst, const void* src)
	{
		return dst;
	}

#define _BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(TYPE) \
	template <std::size_t N> \
	[[gnu::always_inline]] inline \
	constexpr \
	typename std::enable_if<N == sizeof(TYPE)>::type* \
	constexpr_memcpy(void* dst, const void* src) \
	{ \
		*reinterpret_cast<TYPE*>(dst) = *reinterpret_cast<const TYPE*>(src); \
		return dst; \
	}

	_BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(unsigned long long int)
#if ULONG_MAX < ULLONG_MAX
	_BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(unsigned long int)
#endif
#if UINT_MAX < ULONG_MAX && UINT_MAX < ULLONG_MAX
	_BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(unsigned int)
#endif
#if USHRT_MAX < UINT_MAX && USHRT_MAX < ULONG_MAX && USHRT_MAX < ULLONG_MAX
	_BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(unsigned short int)
#endif
#if UCHAR_MAX < USHRT_MAX && UCHAR_MAX < UINT_MAX && UCHAR_MAX < ULONG_MAX && \
	UCHAR_MAX < ULLONG_MAX
	_BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF(unsigned char)
#endif

	template <std::size_t N>
	constexpr typename std::enable_if<
		N != sizeof(unsigned long long int) 
#if ULONG_MAX < ULLONG_MAX
		&& N != sizeof(unsigned long int)
#endif
#if UINT_MAX < ULONG_MAX && UINT_MAX < ULLONG_MAX
		&& N != sizeof(unsigned int)
#endif
#if USHRT_MAX < UINT_MAX && USHRT_MAX < ULONG_MAX && USHRT_MAX < ULLONG_MAX
		&& N != sizeof(unsigned short int)
#endif
#if UCHAR_MAX < USHRT_MAX && UCHAR_MAX < UINT_MAX && UCHAR_MAX < ULONG_MAX && \
	UCHAR_MAX < ULLONG_MAX
		&& N != sizeof(unsigned char)
#endif
		&& N != 0
	>::type*
	constexpr_memcpy(void* dst, const void* src)
	{
		std::size_t n = N;
		unsigned char* d = reinterpret_cast<unsigned char*>(dst);
		const unsigned char* s = reinterpret_cast<const unsigned char*>(src);
		while (n > sizeof(unsigned long int)) {
			*reinterpret_cast<unsigned long int*>(d) = 
				*reinterpret_cast<const unsigned long int*>(s);
			d += sizeof(unsigned long int);
			s += sizeof(unsigned long int);
			n -= sizeof(unsigned long int);
		}
		while (n > 0) { *d++ = *s++; --n; }
		return dst;
	}

#undef _BITSTUFF_CONSTEXPR_MEMCPY_SIZEOF

}

#endif
