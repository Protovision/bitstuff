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
 * Undefined macros:
 *	SWOOPE_USE_STD_BIT_CAST
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
 *	otherwise std::memcpy is used. If SWOOPE_USE_STD_BIT_CAST is defined, this 
 *	file includes <bit> and all overloads of swoope::bit_cast will not be 
 *	defined (swoope::extended_bit_cast, swoope::truncated_bit_cast, and 
 *	swoope::resized_bit_cast will still be defined).
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

#ifdef USE_STD_BIT_CAST
#include <bit>
#endif

namespace swoope {

#define _BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(IDENT) \
	template <class To, class From> \
	[[gnu::always_inline]] inline \
	typename std::enable_if< \
		is_reinterpret_cast_convertible<From, To>::value, To \
	>::type IDENT(From from) noexcept \
	{ \
		static_assert(is_ ## IDENT ## _convertible<From, To>::value); \
		return reinterpret_cast<To>(from); \
	}

#ifndef SWOOPE_USE_STD_BIT_CAST
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(bit_cast)
#endif
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(extended_bit_cast)
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(truncated_bit_cast)
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(resized_bit_cast)

#undef _BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD

#define _BITSTUFF_VOID()
#define _BITSTUFF_WRAP(...) __VA_ARGS__ _BITSTUFF_VOID()
#define _BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
	ATTR, COND, IDENT, PTYPE, RINIT) \
	template <class To, class From> \
	ATTR \
	typename std::enable_if< \
		!is_reinterpret_cast_convertible<From, To>::value && \
		COND, \
		To \
	>::type IDENT(PTYPE from) noexcept \
	{ \
		static_assert(is_ ## IDENT ## _convertible<From, To>::value); \
		typename std::aligned_storage<sizeof(To), alignof(To)>::type \
			result RINIT; \
		std::memcpy(&result, &from, sizeof( \
			typename std::conditional< \
				is_sizeof_less_equal<From, To>::value, From, To \
			>::type)); \
		return *reinterpret_cast<const To*>(&result); \
	}

#define _BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(ID) \
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP([[gnu::always_inline]] inline), \
		_BITSTUFF_WRAP( \
			is_within_sizeof_pointer<From>::value && \
			is_sizeof_greater_equal<From, To>::value), \
		ID, \
		_BITSTUFF_WRAP(From), \
		_BITSTUFF_VOID())

#define _BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(ID) \
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP([[gnu::always_inline]] inline), \
		_BITSTUFF_WRAP( \
			is_within_sizeof_pointer<From>::value && \
			is_sizeof_less<From, To>::value), \
		ID, \
		_BITSTUFF_WRAP(From), \
		_BITSTUFF_WRAP({}))

#define _BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(ID) \
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_VOID(), \
		_BITSTUFF_WRAP( \
			!is_within_sizeof_pointer<From>::value && \
			is_sizeof_greater_equal<From, To>::value), \
		ID, \
		_BITSTUFF_WRAP(const From&), \
		_BITSTUFF_VOID())

#define _BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(ID) \
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_VOID(), \
		_BITSTUFF_WRAP( \
			!is_within_sizeof_pointer<From>::value && \
			is_sizeof_less<From, To>::value), \
		ID, \
		_BITSTUFF_WRAP(const From&), \
		_BITSTUFF_WRAP({}))

#ifndef SWOOPE_USE_STD_BIT_CAST
_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	bit_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	bit_cast)
#endif

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_bit_cast)
_BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_bit_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_bit_cast)
_BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_bit_cast)

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	truncated_bit_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	truncated_bit_cast)

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_bit_cast)
_BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_bit_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_bit_cast)
_BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_bit_cast)

#undef _BITSTUFF_VOID
#undef _BITSTUFF_WRAP
#undef _BITSTUFF_DEFINE_MEMCPY_OVERLOAD
#undef _BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD
#undef _BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD
#undef _BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD
#undef _BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD

}

#endif
