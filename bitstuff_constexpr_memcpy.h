#ifndef BITSTUFF_CONSTEXPR_MEMCPY_H
#define BITSTUFF_CONSTEXPR_MEMCPY_H
#include "bitstuff_align.h"

namespace swoope {


	constexpr
	void* strict_alias_constexpr_memcpy(
		void* dst,
		const void* src,
		std::size_t n)
	noexcept
	{
		unsigned char* d = reinterpret_cast<decltype(d)>(dst);
		const unsigned char* s = reinterpret_cast<decltype(s)>(src);
		while (n > 0) { *d++ = *s++; --n; }
		return dst;
	}

	/*
	 * Precondition: 
	 *	src != nullptr &&
	 *	dst != nullptr
	 *
	 * TODO: Support copying between address not aligned to uintptr_t
	 */
	constexpr
	void* constexpr_memcpy(
		void* dst,
		const void* src,
		std::size_t n)
	noexcept
	{
		if (is_aligned_as(dst, alignof(std::uintptr_t)) &&
			is_aligned_as(src, alignof(std::uintptr_t))) {
			unsigned char* d = reinterpret_cast<decltype(d)>(dst);
			unsigned char* ad = align_right(d, alignof(std::uintptr_t));
			const unsigned char* s = reinterpret_cast<decltype(s)>(src);
			if (ad - d > n) {
				while (d != ad) { *d++ = *s++; --n; }
				while (n > sizeof(std::uintptr_t)) {
					*reinterpret_cast<std::uintptr_t*>(d) = 
						*reinterpret_cast<const std::uintptr_t*>(s);
					d += sizeof(std::uintptr_t);
					s += sizeof(std::uintptr_t);
					n -= sizeof(std::uintptr_t);
				}
			}
			while (n > 0) { *d++ = *s++; --n; }
			return dst;
		}
		return strict_alias_constexpr_memcpy(dst, src, n);
	}

}

#endif
