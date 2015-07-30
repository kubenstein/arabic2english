class ArabicNumber < Struct.new(:arabic_number)
  BASIC_NUMBERS_NAMES = %w(zero one two three four five six seven eight nine)
  TEENS_NUMBERS_NAMES = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  TENS_NUMBERS_NAMES = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

  def to_english(number=arabic_number)
    return single_digit_number_name(number) if number.between?(0, 9)
    return teen_number_name(number) if number.between?(10, 19)
    return tens_combined_number_name(number) if number <100
    return x_digits_number_name(3, 'hundred', number) if number < 1000
    return x_digits_number_name(4, 'thousand', number) if number < 9999
  end


  private

  def single_digit_number_name(number)
    BASIC_NUMBERS_NAMES[number]
  end

  def teen_number_name(number)
    TEENS_NUMBERS_NAMES[number-10]
  end

  def tens_number_name(number)
    TENS_NUMBERS_NAMES[number/10 - 1]
  end

  def tens_combined_number_name(number)
    dec = number/10*10
    rest = number%10
    result = tens_number_name(dec)
    result += " #{single_digit_number_name(rest)}" if rest != 0
    result
  end

  def x_digits_number_name(x, level_name, number)
    major = number / (10**(x-1))
    rest = number % (10**(x-1))

    result = to_english(major)
    result += " #{level_name}#{major > 1 ? 's' : ''}"
    result += " #{to_english(rest)}" if rest != 0
    result
  end
end
