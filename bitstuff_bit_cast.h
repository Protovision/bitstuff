#ifndef BITSTUFF_BYTE_CAST_H
#define BITSTUFF_BYTE_CAST_H

/*
 * File: bitstuff_bit_cast.h
 * Author: Mark Swoope
 * Date: February 23, 2019
 *
 * Includes:
 *	"bitstuff_type_traits.h"
 *	<cstring>
 * Functions:
 *	To swoope::bit_cast<To, From>(From)
 *	To swoope::bit_cast<To, From>(const From&)
 *	To swoope::extended_bit_cast<To, From>(From)
 *	To swoope::extended_bit_cast<To, From>(const From&)
 *	To swoope::truncated_bit_cast<To, From>(From)
 *	To swoope::truncated_bit_cast<To, From>(const From&)
 *	To swoope::resized_bit_cast<To, From>(From)
 *	To swoope::resized_bit_cast<To, From>(const From&)
 *
 * Summary:
 *	If swoope::is_bit_cast_convertible<From, To>::value is true (that is, the 
 *	types To and From are the same size and trivially copyable), the result of 
 *	calling bit_cast is a value of type To that contains the same bits as it's 
 *	argument of type From. The overload that receives it's argument by copy is 
 *	chosen if the size of the argument type is less than or equal to the size 
 *	of a pointer, otherwise the overload that receives it's argument by 
 *	reference is chosen. Internally, swoope::bit_cast uses reinterpret_cast 
 *	if swoope::is_reinterpret_cast_convertible<From, To>::value is true, 
 *	otherwise std::memcpy is used. If BITSTUFF_ONLY_MEMCPY_BIT_CAST, then the 
 *	functions bit_cast, extended_bit_cast, truncated_bit_cast, and 
 *	resized_bit_cast will always use std::memcpy to convert the types.
 *
 *	extended_bit_cast is a variation of bit_cast that can be used if the size 
 *	of the argument type is less than the size of the result type, in which 
 *	case extended_bit_cast will set the remaining bits in the result to zero,
 *	otherwise the effect is the same as bit_cast if the sizes are equal.
 *
 *	truncated_bit_cast is a variation of bit_cast that can be used if the size
 *	of the argument type is greater than the size of the result type, in which
 *	case truncated_bit_cast will only copy a number of bits that do not 
 *	exceed the size of the result type; otherwise the effect is the same as
 *	bit_cast if the sizes are equal.
 *
 *	resized_bit_cast is a variation of bit_cast that has the same effect of 
 *	bit_cast, extended_bit_cast, or truncated_bit_cast if the size of the 
 *	argument type is found, respectively, to be equal to, less than, or 
 *	greater than the size of the result type.
 *
 */

#include "bitstuff_type_traits.h"
#include <cstring>

#define _BITSTUFF_VOID()
#define _BITSTUFF_WRAP(...) __VA_ARGS__ _BITSTUFF_VOID()

namespace swoope {

#ifndef BITSTUFF_ONLY_MEMCPY_BIT_CAST

#define _BITSTUFF_REINTERPRET_CAST(FUNCTION_NAME) \
	template <class To, class From> \
	[[gnu::always_inline]] inline \
	typename std::enable_if< \
		is_reinterpret_cast_convertible<From, To>::value, \
		To \
	>::type FUNCTION_NAME(From from) noexcept \
	{ \
		static_assert(is_ ## FUNCTION_NAME ## _convertible<From, To>::value); \
		return reinterpret_cast<To>(from); \
	}

	_BITSTUFF_REINTERPRET_CAST(bit_cast)
	_BITSTUFF_REINTERPRET_CAST(extended_bit_cast)
	_BITSTUFF_REINTERPRET_CAST(truncated_bit_cast)
	_BITSTUFF_REINTERPRET_CAST(resized_bit_cast)

#undef _BITSTUFF_REINTERPRET_CAST 

#define _BITSTUFF_MEMCPY_ENABLE_IF_CONDITION_1() \
	_BITSTUFF_WRAP(!is_reinterpret_cast_convertible<From, To>::value)

#else

#define _BITSTUFF_MEMCPY_ENABLE_IF_CONDITION_1() \
	_BITSTUFF_WRAP(true)

#endif /* BITSTUFF_ONLY_MEMCPY_BIT_CAST */

#define _BITSTUFF_MEMCPY( \
	ENABLE_IF_CONDITION, \
	FUNCTION_NAME, \
	PARAMETER_TYPE, \
	RESULT_INITIALIZER) \
	template <class To, class From> \
	[[gnu::always_inline]] inline \
	typename std::enable_if< \
		_BITSTUFF_MEMCPY_ENABLE_IF_CONDITION_1() && \
		ENABLE_IF_CONDITION, To \
	>::type FUNCTION_NAME(PARAMETER_TYPE from) noexcept \
	{ \
		static_assert(is_ ## FUNCTION_NAME ## _convertible<From, To>::value); \
		typename std::aligned_storage<sizeof(To), alignof(To)>::type \
			result RESULT_INITIALIZER; \
		std::memcpy( \
			&result, \
			&from, \
			sizeof(typename std::conditional< \
				is_sizeof_less_equal<From, To>::value, From, To \
			>::type)); \
		return *reinterpret_cast<const To*>(&result); \
	}

#define _BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS(FUNCTION_NAME) \
	_BITSTUFF_MEMCPY( \
		_BITSTUFF_WRAP( \
			is_within_sizeof_pointer<From>::value && \
			is_sizeof_greater_equal<From, To>::value), \
		FUNCTION_NAME, \
		_BITSTUFF_WRAP(From), \
		_BITSTUFF_WRAP()) \
	_BITSTUFF_MEMCPY( \
		_BITSTUFF_WRAP( \
			!is_within_sizeof_pointer<From>::value && \
			is_sizeof_greater_equal<From, To>::value), \
		FUNCTION_NAME, \
		_BITSTUFF_WRAP(const From&), \
		_BITSTUFF_WRAP())

#define _BITSTUFF_MEMCPY_FUNCTIONS(FUNCTION_NAME) \
	_BITSTUFF_MEMCPY( \
		_BITSTUFF_WRAP( \
			is_within_sizeof_pointer<From>::value && \
			is_sizeof_less<From, To>::value), \
		FUNCTION_NAME, \
		_BITSTUFF_WRAP(From), \
		_BITSTUFF_WRAP({})) \
	_BITSTUFF_MEMCPY( \
		_BITSTUFF_WRAP( \
			!is_within_sizeof_pointer<From>::value && \
			is_sizeof_less<From, To>::value), \
		FUNCTION_NAME, \
		_BITSTUFF_WRAP(const From&), \
		_BITSTUFF_WRAP({}))

	_BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS(bit_cast)
	_BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS(extended_bit_cast)
	_BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS(truncated_bit_cast)
	_BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS(resized_bit_cast)

	_BITSTUFF_MEMCPY_FUNCTIONS(extended_bit_cast)
	_BITSTUFF_MEMCPY_FUNCTIONS(resized_bit_cast)

#undef _BITSTUFF_VOID
#undef _BITSTUFF_WRAP
#undef _BITSTUFF_MEMCPY_ENABLE_IF_CONDITION_1
#undef _BITSTUFF_MEMCPY
#undef _BITSTUFF_UNINITIALIZED_MEMCPY_FUNCTIONS
#undef _BITSTUFF_MEMCPY_FUNCTIONS

}

#endif
