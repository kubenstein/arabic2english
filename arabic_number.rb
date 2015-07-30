class ArabicNumber < Struct.new(:number)
  BASIC_NUMBERS_NAMES = %w(zero one two three four five six seven eight nine)
  TEENS_NUMBERS_NAMES = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  TENS_NUMBERS_NAMES = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

  def to_english
    return single_digit_number_name(number) if number.between?(0, 9)
    return teen_number_name(number) if number.between?(10, 19)
    return tens_number_name(number) if number%10 && number <100
    return 'one hundred' if number == 100
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
end
