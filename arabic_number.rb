class ArabicNumber < Struct.new(:number)
  BASIC_NUMBERS = %w(zero one two three four five six seven eight nine)
  TEENS_NUMBERS = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

  def to_english
    return BASIC_NUMBERS[number] if number.between?(0, 9)
    return TEENS_NUMBERS[number-10] if number.between?(10, 19)
    return 'one hundred' if number == 100
  end
end
