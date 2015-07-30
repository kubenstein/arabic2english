require './arabic_number.rb'

RSpec.describe ArabicNumber do

  it 'returns proper translations' do
    {
        # single digit numbers
        0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine',
        # teen numbers
        10 => 'ten', 11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen',
        # rounded 10s
        20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty', 60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety',
        # double digits numbers
        21 => 'twenty one', 32 => 'thirty two', 43 => 'forty three', 54 => 'fifty four', 65 => 'sixty five', 76 => 'seventy six', 87 => 'eighty seven', 98 => 'ninety eight',
        # 3 digits numbers
        100 => 'one hundred', 101 => 'one hundred one', 121 => 'one hundred twenty one', 232 => 'two hundreds thirty two', 343 => 'three hundreds forty three', 454 => 'four hundreds fifty four', 565 => 'five hundreds sixty five', 676 => 'six hundreds seventy six', 787 => 'seven hundreds eighty seven', 898 => 'eight hundreds ninety eight',
        # 4digits numbers
        1000 => 'one thousand', 1015 => 'one thousand fifteen', 1217 => 'one thousand two hundreds seventeen', 2327 => 'two thousands three hundreds twenty seven', 3438 => 'three thousands four hundreds thirty eight', 4549 => 'four thousands five hundreds forty nine', 5650 => 'five thousands six hundreds fifty', 6761 => 'six thousands seven hundreds sixty one', 7872 => 'seven thousands eight hundreds seventy two', 8983 => 'eight thousands nine hundreds eighty three'

    }.each do |k, v|
      expect(ArabicNumber.new(k).to_english).to eq v
    end
  end

end