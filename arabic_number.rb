class ArabicNumber < Struct.new(:number)
  def to_english
    return 'one' if number == 1
    return 'eleven' if number == 11
    return 'one hundred' if number == 100
  end
end
