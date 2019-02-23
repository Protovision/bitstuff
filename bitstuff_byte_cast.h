#ifndef BITSTUFF_BYTE_CAST_H
#define BITSTUFF_BYTE_CAST_H
#include "bitstuff_type_traits.h"
#include <cstring>

namespace swoope {

#define _BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(IDENT) \
	template <class To, class From> \
	[[gnu::always_inline]] inline \
	typename std::enable_if< \
		is_reinterpret_cast_convertible<From, To>::value, To \
	>::type IDENT(From from) \
	{ \
		static_assert(is_ ## IDENT ## _convertible<From, To>::value); \
		return reinterpret_cast<To>(from); \
	}

_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(byte_cast)
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(extended_byte_cast)
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(truncated_byte_cast)
_BITSTUFF_DEFINE_REINTERPRET_CAST_OVERLOAD(resized_byte_cast)

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
	>::type IDENT(PTYPE from) \
	{ \
		static_assert(is_ ## IDENT ## _convertible<From, To>::value); \
		To result RINIT; \
		std::memcpy(&result, &from, sizeof( \
			typename std::conditional< \
				is_sizeof_less_equal<From, To>::value, From, To \
			>::type)); \
		return result; \
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

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	byte_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	byte_cast)

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_byte_cast)
_BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_byte_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_byte_cast)
_BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	extended_byte_cast)

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	truncated_byte_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	truncated_byte_cast)

_BITSTUFF_PASS_BY_COPY_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_byte_cast)
_BITSTUFF_PASS_BY_COPY_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_byte_cast)
_BITSTUFF_PASS_BY_REF_AND_DEFAULT_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_byte_cast)
_BITSTUFF_PASS_BY_REF_AND_VALUE_INIT_RESULT_MEMCPY_OVERLOAD(
	resized_byte_cast)




/*
#define _BITSTUFF_PASS_BY_COPY() _BITSTUFF_WRAP(From)
#define _BITSTUFF_PASS_BY_REF() _BITSTUFF_WRAP(const From&)
#define _BITSTUFF_DEFAULT_INIT_RESULT() _BITSTUFF_VOID()
#define _BITSTUFF_VALUE_INIT_RESULT() _BITSTUFF_WRAP({})
*/
/*
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(_BITSTUFF_SHOULD_PASS_BY_COPY()),
		byte_cast,
		_BITSTUFF_PASS_BY_COPY*/
/*
	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(is_within_sizeof_pointer<From>::value),
		byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(!is_within_sizeof_pointer<From>::value),
		byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			is_within_sizeof_pointer<From>::value &&
			is_sizeof_equal<From, To>::value),
		extended_byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			is_within_sizeof_pointer<From>::value &&
			is_sizeof_less<From, To>::value),
		extended_byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_WRAP({}))

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			!is_within_sizeof_pointer<From>::value &&
			is_sizeof_equal<From, To>::value),
		extended_byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			!is_within_sizeof_pointer<From>::value &&
			is_sizeof_less<From, To>::value),
		extended_byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_WRAP({}))

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(is_within_sizeof_pointer<From>::value),
		truncated_byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(!is_within_sizeof_pointer<From>::value),
		truncated_byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			is_within_sizeof_pointer<From>::value &&
			is_sizeof_greater_equal<From, To>::value),
		resized_byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			is_within_sizeof_pointer<From>::value &&
			is_sizeof_less<From, To>::value),
		resized_byte_cast,
		_BITSTUFF_WRAP(From),
		_BITSTUFF_WRAP({}))

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			!is_within_sizeof_pointer<From>::value &&
			is_sizeof_greater_equal<From, To>::value),
		resized_byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_VOID())

	_BITSTUFF_DEFINE_MEMCPY_OVERLOAD( \
		_BITSTUFF_WRAP(
			!is_within_sizeof_pointer<From>::value &&
			is_sizeof_less<From, To>::value),
		resized_byte_cast,
		_BITSTUFF_WRAP(const From&),
		_BITSTUFF_WRAP({}))
*/

#undef _BITSTUFF_VOID
#undef _BITSTUFF_WRAP
#undef _BITSTUFF_DEFINE_MEMCPY_OVERLOAD

}

#endif
