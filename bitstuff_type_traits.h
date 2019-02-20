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
namespace bitstuff {
	/*
	 *	template <class From, class To>
	 *	struct is_reinterpret_cast_convertible<From, To>
	 *
	 *	Checks if a type can be converted to the other type using
	 *	reinterpret_cast without getting a compiler error, static 
	 *	const data member value will be true if this is the case.
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

	/* Recursively removes all const, volatile, reference from a type */
	template <class T> struct remove_cvr { typedef T type; };
	template <class T> struct remove_cvr<T&> : remove_cvr<T> {};
	template <class T> struct remove_cvr<T&&> : remove_cvr<T> {};
	template <class T> struct remove_cvr<T const> : remove_cvr<T> {};
	template <class T> struct remove_cvr<T volatile> : remove_cvr<T> {};
	template <class T> struct remove_cvr<T const volatile> : remove_cvr<T> {};

	/*
	 * template <class To, class From>
	 * To byte_cast(From from);
	 * template <class To, class From>
	 * To extended_byte_cast(From from);
	 * template <class To, class From>
	 * To truncated_byte_cast(From from);
	 * template <class To, class From>
	 * To resized_byte_cast(From from);
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
	 * an expression is not ill-formed, otherwise std::memcpy is used.
	 */
	template <class To, class From>
	typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type extended_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type truncated_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type resized_byte_cast(From from)
	{
		return reinterpret_cast<To>(from);
	}

	template <class To, class From>
	typename std::enable_if<
		is_reinterpret_cast_convertible<From, To>::value, To
	>::type byte_cast(const From& from)
	{
		return reinterpret_cast<To>(from);
	}
	
	template <class To, class From>
	typename std::enable_if<
		sizeof(To) == sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value,
		To
	>::type byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			std::addressof(result),
			std::addressof(from),
			sizeof(From));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		sizeof(To) >= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value,
		To
	>::type extended_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			std::addressof(result),
			std::addressof(from),
			sizeof(From));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		sizeof(To) <= sizeof(From) &&
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value,
		To
	>::type truncated_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			std::addressof(result),
			std::addressof(from),
			sizeof(To));
		return result;
	}

	template <class To, class From>
	typename std::enable_if<
		std::is_trivial<To>::value &&
		std::is_trivially_copyable<From>::value,
		To
	>::type resized_byte_cast(const From& from)
	{
		To result{};
		std::memcpy(
			std::addressof(result),
			std::addressof(from),
			sizeof(typename std::conditional<
				sizeof(To) >= sizeof(From),
				From,
				To
			>::type));
		return result;
	}
}

#endif
