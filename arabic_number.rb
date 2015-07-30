class ArabicNumber < Struct.new(:number)
  BASIC_NUMBERS = %w(zero one two three four five six seven eight nine)
  TEENS_NUMBERS = %w(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
  TENS_NUMBERS = %w(ten twenty thirty forty fifty sixty seventy eighty ninety)

  def to_english
    return BASIC_NUMBERS[number] if number.between?(0, 9)
    return TEENS_NUMBERS[number-11] if number.between?(11, 19)
    return TENS_NUMBERS[(number/10)-1] if number%10 && number <100
    return 'one hundred' if number == 100
  end
end
