class ArabicNumber < Struct.new(:arabic_number)
  BASIC_NUMBERS_NAMES = %w(zero one two three four five six seven eight nine)
  TEENS_NUMBERS_NAMES = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  TENS_NUMBERS_NAMES = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

  def to_english(number=arabic_number)
    return single_digit_number_name(number) if number.between?(0, 9)
    return teen_number_name(number) if number.between?(10, 19)
    return tens_number_name(number) if (number%10 == 0) && number <100
    return tens_combined_number_name(number) if (number%10 != 0) && number <100
    return three_digits_number_name(number) if number < 1000
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
    dec = (number/10*10)
    rest = number%10
    tens_number_name(dec) + ' ' + single_digit_number_name(rest)
  end

  def three_digits_number_name(number)
    hundred = (number/100)
    rest = number%100

    result = single_digit_number_name(hundred)
    result += " hundred#{hundred > 1 ? 's' : ''}"
    result += " #{to_english(rest)}" if rest != 0
    result
  end
end
