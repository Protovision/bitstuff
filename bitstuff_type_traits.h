#ifndef BITSTUFF_TYPE_TRAITS
#define BITSTUFF_TYPE_TRAITS

/*
 * File: bitstuff_type_traits.h
 * Author: Mark Swoope
 * Date: February 23, 2019
 * 
 * Includes:
 *	<type_traits>
 * Classes:
 *	swoope::is_sizeof_equal<T, U>
 *	swoope::is_sizeof_not_equal<T, U>
 *	swoope::is_sizeof_less<T, U>
 *	swoope::is_sizeof_less_equal<T, U>
 *	swoope::is_sizeof_greater_equal<T, U>
 *	swoope::is_within_sizeof_short<T>
 *	swoope::is_within_sizeof_int<T>
 *	swoope::is_within_sizeof_long<T>
 *	swoope::is_within_sizeof_long_long<T>
 *	swoope::is_within_sizeof_pointer<T>
 *	swoope::is_reinterpret_cast_convertible<From, To>
 *	swoope::is_bit_cast_convertible<From, To>
 *	swoope::is_extended_bit_cast_convertible<From, To>
 *	swoope::is_truncated_bit_cast_convertible<From, To>
 *	swoope::is_resized_bit_cast_convertible<From, To>	
 */

#include <type_traits>

namespace swoope {

#define _BITSTUFF_DEFINE_IS_SIZEOF(IDENT, TOKEN) \
	template <class T, class U> \
	struct is_sizeof_ ## IDENT : \
		std::integral_constant< \
			bool, (sizeof(T) TOKEN sizeof(U)) \
		>::type {};

	_BITSTUFF_DEFINE_IS_SIZEOF(equal, ==)
	_BITSTUFF_DEFINE_IS_SIZEOF(not_equal, !=)
	_BITSTUFF_DEFINE_IS_SIZEOF(less, <)
	_BITSTUFF_DEFINE_IS_SIZEOF(greater, >)
	_BITSTUFF_DEFINE_IS_SIZEOF(less_equal, <=)
	_BITSTUFF_DEFINE_IS_SIZEOF(greater_equal, >=)

#undef _BITSTUFF_DEFINE_IS_SIZEOF

#define _BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(IDENT, TYPE) \
	template <class T> \
	struct is_within_sizeof_ ## IDENT : \
		std::integral_constant< \
			bool, is_sizeof_less_equal<T, TYPE>::value \
		>::type {};

	_BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(int, int)
	_BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(long, long)
	_BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(pointer, void*)
	_BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(short, short)
	_BITSTUFF_DEFINE_IS_WITHIN_SIZEOF(long_long, long long)

#undef _BITSTUFF_DEFINE_IS_WITHIN_SIZEOF_FUNCTION

	template <class From, class To>
	struct is_reinterpret_cast_convertible :
		std::integral_constant<
			bool,
			(!(std::is_const<From>::value &&
				!std::is_const<To>::value)) &&
			(!(std::is_volatile<From>::value &&
				!std::is_volatile<To>::value)) &&
			((std::is_same<From, To>::value &&
					(std::is_integral<From>::value ||
						std::is_enum<From>::value ||
						std::is_pointer<From>::value ||
						std::is_member_pointer<From>::value)) ||
				(std::is_pointer<From>::value &&
					std::is_integral<To>::value &&
					is_sizeof_less_equal<From, To>::value) ||
				((std::is_integral<From>::value ||
						std::is_enum<From>::value) &&
					std::is_pointer<To>::value) ||
				(std::is_same<From, std::nullptr_t>::value &&
					std::is_integral<To>::value) ||
				(std::is_pointer<From>::value &&
					std::is_pointer<To>::value) ||
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
					>::value))
		>::type
	{
	};
	
	template <class From, class To>
	struct is_resized_bit_cast_convertible :
		std::integral_constant<
			bool,
			std::is_trivially_copyable<From>::value &&
			std::is_trivially_copyable<To>::value
		>::type
	{
	};

#define _BITSTUFF_DEFINE_IS_CONVERTIBLE(IDENT, COND) \
	template <class From, class To> \
	struct is_ ## IDENT ## _convertible : \
		std::integral_constant< \
			bool, \
			COND<From, To>::value && \
			is_resized_bit_cast_convertible<From, To>::value \
		>::type {};

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		bit_cast,
		is_sizeof_equal)

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		extended_bit_cast,
		is_sizeof_less_equal)

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		truncated_bit_cast,
		is_sizeof_greater_equal)

#undef _BITSTUFF_DEFINE_IS_CONVERTIBLE

}

#endif
