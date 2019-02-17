/*
 * Author: Mark Swoope
 * Date: February 2019
 *
 * Binteger<UnderlyingType> stores an unsigned integral UnderlyingType and
 * provides ways to access a subset of it's bits. Example to set the last
 * 4 bits of a 16 bit integer to the value 5, then display the value of 
 * the whole Binteger in integer and string formats:
 *
 * Binteger<std::uint16_t> b;
 * b[{15, 11}] = 5;
 * std::cout << "Binary: " << b[{15, 0}] << std::endl;
 * std::cout << "Decimal: " << b[{15, 0}].to_trivial<unsigned int>() << std::endl;
 */
#ifndef BINTEGER_H
#define BINTEGER_H
#include <utility>
#include <memory>
#include <type_traits>
#include <cstdint>
#include <cstring>

/*
 * Copies bits from the object representation of FromType from to a value 
 * initialized object of type ToType. If the size of FromType is larger 
 * than the size of ToType, only the first N bits equal to the size of 
 * ToType are copied.
 */
template <typename ToType, typename FromType>
typename std::enable_if<
	std::is_trivially_copyable<FromType>::value &&
	std::is_trivial<ToType>::value,
	ToType
>::type truncate_and_bit_cast(const FromType& from)
{
	ToType to{};
	std::memcpy(std::addressof(to),
			std::addressof(from),
			sizeof(typename std::conditional<
				sizeof(to) < sizeof(from),
				ToType,
				FromType
			>::type));
	return to;
}

template <
	typename UnderlyingType,
	typename = typename std::enable_if<
		std::is_unsigned<UnderlyingType>::value
	>::type
>
struct BintegerBase {
	UnderlyingType data;

	BintegerBase() : data()
	{
	}

	BintegerBase(const BintegerBase&) = default;
	BintegerBase(BintegerBase&&) = default;
	BintegerBase& operator=(const BintegerBase&) = default;
	BintegerBase& operator=(BintegerBase&&) = default;

	void swap(BintegerBase& other)
	{
		using std::swap;
		swap(data, other.data);
	}
};


template <typename UnderlyingType>
class Binteger : private BintegerBase<UnderlyingType> {
public:
	typedef UnderlyingType underlying_type;
	typedef std::size_t size_type;
	typedef std::ptrdiff_t difference_type;
	/*
	 * range_type::first := high bit position
	 * range_type::second := low bit position
	 */
	typedef std::pair<size_type, size_type> range_type;
private:
	template <bool is_const>
	class const_unqualified_reference {
		friend class Binteger;
	private:
		typedef typename std::conditional<
			is_const,
			const underlying_type*,
			underlying_type*
		>::type const_qualified_pointer;

		const_qualified_pointer data_pointer;
		size_type position;
		size_type count;
		underlying_type data_bitmask;
		underlying_type value_bitmask;

		const_unqualified_reference(
				const_qualified_pointer data_ptr,
				const range_type& range) :
			data_pointer(data_ptr),
			position(range.second),
			count(range.first - range.second + 1),
			data_bitmask(),
			value_bitmask()
		{
			for (size_type i = 0; i < count; ++i) {
				value_bitmask |= (1 << i);
			}
			for (size_type i = range.second;
					i <= range.first;
					++i) {
				data_bitmask |= (1 << i);	
			}
		}

		const_unqualified_reference(
			const const_unqualified_reference&) = default;
		const_unqualified_reference(
			const_unqualified_reference&&) = default;
		const_unqualified_reference& operator=(
			const const_unqualified_reference&) = default;
		const_unqualified_reference& operator=(
			const_unqualified_reference&&) = default;
	public:

		template <
			typename ValueType,
			typename = typename std::enable_if<
				!is_const &&
				std::is_arithmetic<ValueType>::value
			>::type
		>
		const const_unqualified_reference& operator=(const ValueType& value) const
		{
			underlying_type v{truncate_and_bit_cast<
					underlying_type>(value)};
			*data_pointer = ((*data_pointer & ~data_bitmask) |
						(v & value_bitmask) << position);
			return *this;
		}

		const const_unqualified_reference operator[](size_type i) const
		{
			return { data_pointer, {i+position, i+position} };
		}

		const const_unqualified_reference operator[](const range_type& r) const
		{
			return { data_pointer, {r.first+position, r.second+position} };
		}

		template <typename ToType>
		typename std::enable_if<
			std::is_trivial<ToType>::value,
			ToType
		>::type to_trivial() const
		{
			ToType result;
			underlying_type v{};
			v = ((*data_pointer & data_bitmask) >> position);
			result = truncate_and_bit_cast<ToType>(v);
			return result;
		}
	
		template <
			typename CharT = char,
			typename Traits = std::char_traits<CharT>,
			typename Alloc = std::allocator<CharT>
		>
		std::basic_string<CharT, Traits, Alloc> to_string(
					CharT zero = CharT('0'),
					CharT one = CharT('1')) const
		{
			std::basic_string<CharT, Traits, Alloc> result;
			size_type n = position + count - 1;
			for (size_type i = 0; i < count; ++i) {
				result += (
					(*data_pointer & (1 << (n - i))) ?
					one : zero);
			}
			return result;
		}
	
		/* TODO: Optimize to not make a temporary string */
		template <typename CharT, typename Traits>
		friend std::basic_ostream<CharT, Traits>& operator<<(
			std::basic_ostream<CharT, Traits>& os,
			const const_unqualified_reference& r)
		{
			return (os << r.to_string<CharT, Traits>());
		}

	};
public:
	typedef const_unqualified_reference<false> reference;
	typedef const_unqualified_reference<true> const_reference;

	Binteger() = default;
	Binteger(const Binteger&) = default;
	Binteger(Binteger&&) = default;
	Binteger& operator=(const Binteger&) = default;
	Binteger& operator=(Binteger&&) = default;

	reference operator[](size_type i)
	{
		return { std::addressof(data()), {i, i} };
	}

	reference operator[](range_type r)
	{
		return { std::addressof(data()), r };
	}

	const_reference operator[](size_type i) const
	{
		return { std::addressof(data()), {i, i} };
	}

	const_reference operator[](range_type r) const
	{
		return { std::addressof(data()), r };
	}

	template <typename ValueType>
	
	void swap(Binteger& other)
	{
		BintegerBase<UnderlyingType>::swap();
	}

	inline underlying_type& data()
	{
		return BintegerBase<UnderlyingType>::data;
	}

	inline const underlying_type& data() const
	{
		return BintegerBase<UnderlyingType>::data;
	}

};

template <typename T>
void swap(Binteger<T>& a, Binteger<T>& b)
{
	a.swap(b);
}


#endif
