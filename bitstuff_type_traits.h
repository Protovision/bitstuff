#ifndef BITSTUFF_TYPE_TRAITS
#define BITSTUFF_TYPE_TRAITS
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
	struct is_resized_byte_cast_convertible :
		std::integral_constant<
			bool,
			std::is_trivially_copyable<From>::value &&
			std::is_trivial<To>::value
		>::type
	{
	};

#define _BITSTUFF_DEFINE_IS_CONVERTIBLE(IDENT, COND) \
	template <class From, class To> \
	struct is_ ## IDENT ## _convertible : \
		std::integral_constant< \
			bool, \
			COND<From, To>::value && \
			is_resized_byte_cast_convertible<From, To>::value \
		>::type {};

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		byte_cast,
		is_sizeof_equal)

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		extended_byte_cast,
		is_sizeof_less_equal)

	_BITSTUFF_DEFINE_IS_CONVERTIBLE(
		truncated_byte_cast,
		is_sizeof_greater_equal)

#undef _BITSTUFF_DEFINE_IS_CONVERTIBLE

}

#endif
