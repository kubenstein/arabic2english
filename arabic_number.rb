class ArabicNumber < Struct.new(:number)
  BASIC_NUMBERS = %w(zero one two three four five six seven eight nine)

  def to_english
    return BASIC_NUMBERS[number] if number.between?(0, 9)
    return 'eleven' if number == 11
    return 'one hundred' if number == 100
  end
end
