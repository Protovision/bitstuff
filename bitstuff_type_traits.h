#ifndef BITSTUFF_TYPE_TRAITS_H
#define BITSTUFF_TYPE_TRAITS_H
/* 
 * File: bitstuff_type_traits.h
 * Author: Mark Swoope
 * Date: February 2019
 */
#include <cstddef>
#include <utility>
#include <type_traits>
#include <cstring>
#include <cstdint>
namespace bitstuff {
	/*
	 * template <class From, class To>
	 * struct is_reinterpret_cast_convertible<From, To>
	 *
	 * Checks if a type can be converted to the other type using
	 * reinterpret_cast without getting a compiler error, static 
	 * const data member value will be true if this is the case.
	 */
	template <class From, class To>
	struct is_reinterpret_cast_convertible : 
		std::conditional<
			(!(std::is_const<From>::value &&
				!std::is_const<To>::value)) &&
			(!(std::is_volatile<From>::value &&
				!std::is_volatile<To>::value)) &&
			((std::is_same<From, To>::value &&
				(std::is_integral<From>::value  ||
				std::is_enum<From>::value ||
				std::is_pointer<From>::value ||
				std::is_member_pointer<From>::value)) ||
			(std::is_pointer<From>::value &&
				std::is_integral<To>::value &&
				sizeof(From) <= sizeof(To)) ||
			((std::is_integral<From>::value ||
				std::is_enum<From>::value) &&
				std::is_pointer<To>::value) ||
			(std::is_same<From, std::nullptr_t>::value &&
				std::is_integral<To>::value) ||
			(std::is_pointer<From>::value && std::is_pointer<To>::value) ||
			(std::is_lvalue_reference<From>::value &&
				std::is_reference<To>::value) ||
			(std::is_member_function_pointer<
				typename std::remove_reference<From>::type
				>::value &&
				std::is_member_function_pointer<
					typename std::remove_reference<To>::type
				>::value) ||
			(std::is_member_object_pointer<
				typename std::remove_reference<From>::type
				>::value &&
				std::is_member_object_pointer<
					typename std::remove_reference<To>::type
				>::value)),
			std::true_type,
			std::false_type
		>::type {};

	/*
	 * template <class To, class From>
	 * To byte_cast(const From& from);
	 * template <class To, class From>
	 * To extended_byte_cast(const From& from);
	 * template <class To, class From>
	 * To truncated_byte_cast(const From& from);
	 * template <class To, class From>
	 * To resized_byte_cast(const From& from);
	 *
	 * byte_cast: Returns a new object of type To whose object representation 
	 * contains the same bytes as that from the object representation of from.
	 * Types To and From must be trivially copyable and sizeof(To) must equal
	 * sizeof(From). This function is just like std::bit_cast.
	 *
	 * extended_byte_cast: A variation of byte_cast where sizeof(From) can be
	 * less than sizeof(To), in which case the remaining bytes in the result 
	 * will be set to zero.
	 *
	 * truncated_byte_cast: A variation of byte_cast where where sizeof(From)
	 * can be greater than sizeof(To), in which case the result will hold the 
	 * first sizeof(To) bytes from the source value.
	 *
	 * resized_byte_cast: A variation of byte_cast that has the same effect of
	 * extended_byte_cast if sizeof(From) is less than sizeof(To), byte_cast
	 * if sizeof(From) is equal to sizeof(To), or truncated_byte_cast if 
	 * sizeof(From) > sizeof(To) respectively.
	 *
	 * All four functions return a copy of reinterpret_cast<To>(from) if such 
	 * an expression is not ill-formed, making these functions really fast for 
	 * converting back and forth between integers and pointers; if 
	 * reinterpret_cast cannot be used, these functions use std::memcpy.
	 */

	/*
	 * The fastest byte_cast conversions are for converting from pointer to 
	 * integral or integral to pointer, reinterpret_cast can be used for this
	 * which does not compile to a CPU instruction. The only overhead is the 
	 * cost of entering and leaving the function.
	 */

	template <class To, class From>
	inline typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type extended_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	inline typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type truncated_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	inline typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type resized_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	inline typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	/*
	 * Should probably use std::addressof for std::memcpy in case operator&() 
	 * is overloaded, but std::addressof generates a function call (inline 
	 * specifiers are often ignored) and wastes CPU instructions for 99% of 
	 * the types whose addresses can be obtained with just a single CPU 
	 * instruction.
	 */

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) == sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		sizeof(From) <= sizeof(std::uintptr_t),
		To
	>::type byte_cast(From from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(From));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) == sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		(sizeof(From) > sizeof(std::uintptr_t)),
		To
	>::type byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(From));
		return result;
	}

	/*
	 * For each byte_cast variation that uses std::memcpy, there are two 
	 * overloads with the same body but different signatures. For converting 
	 * from types that can fit in std::uintptr_t, the argument is accepted by 
	 * copy; otherwise, the argument is accepted by lvalue reference. This is 
	 * so that we don't have to pass and dereference pointers to objects which
	 * are already small enough that they can be passed directly through 
	 * registers.
	 */

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) >= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		sizeof(From) <= sizeof(std::uintptr_t),
		To
	>::type extended_byte_cast(From from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(From));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) >= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		(sizeof(From) > sizeof(std::uintptr_t)),
		To
	>::type extended_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(From));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) <= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		sizeof(From) <= sizeof(std::uintptr_t),
		To
	>::type truncated_byte_cast(From from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(To));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		sizeof(To) <= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		(sizeof(From) > sizeof(std::uintptr_t)),
		To
	>::type truncated_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(To));
		return result;
	}
	
	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		sizeof(From) <= sizeof(std::uintptr_t),
		To
	>::type resized_byte_cast(From from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(typename std::conditional<
				sizeof(To) >= sizeof(From),
				From,
				To
			>::type));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		!is_reinterpret_cast_convertible<From, To>::value &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value &&
		(sizeof(From) > sizeof(std::uintptr_t)),
		To
	>::type resized_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			&result,
			&from,
			sizeof(typename std::conditional<
				sizeof(To) >= sizeof(From),
				From,
				To
			>::type));
		return result;
	}
}

#endif
