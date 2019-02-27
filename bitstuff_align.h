#ifndef BITSTUFF_ALIGN_H
#define BITSTUFF_ALIGN_H
#include <type_traits>
#include <cstdint>

namespace swoope {

	template <
		class Pointer,
		typename std::enable_if<
			std::is_pointer<Pointer>::value
		>::type* = nullptr>
	[[gnu::always_inline]] inline
	constexpr bool is_aligned_as(Pointer p, std::size_t a)
	{
		return !(reinterpret_cast<std::uintptr_t>(p) & 
			(static_cast<std::uintptr_t>(a) - 1));
	}

	template <
		class Pointer,
		typename std::enable_if<
			std::is_pointer<Pointer>::value
		>::type* = nullptr>
	[[gnu::always_inline]] inline
	constexpr Pointer align_right(Pointer p, std::size_t a)
	{
		std::uintptr_t ap = static_cast<std::uintptr_t>(a) - 1;
		return reinterpret_cast<Pointer>(
			(reinterpret_cast<std::uintptr_t>(p) + ap) & ~ap);
	}

	template <
		class Pointer,
		typename std::enable_if<
			std::is_pointer<Pointer>::value
		>::type* = nullptr>
	[[gnu::always_inline]] inline
	constexpr Pointer align_left(Pointer p, std::size_t a)
	{
		return reinterpret_cast<Pointer>(
			reinterpret_cast<std::uintptr_t>(p) & 
			~(static_cast<std::uintptr_t>(a) - 1));
	}


}

#endif
