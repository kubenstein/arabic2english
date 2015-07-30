require './arabic_number.rb'

RSpec.describe ArabicNumber do

  it 'returns proper translations for 100' do
    expect(ArabicNumber.new(100).to_english).to eq 'one hundred'
  end

  it 'returns proper translations for numbers 0-9' do
    ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].each_with_index do |v, i|
      expect(ArabicNumber.new(i).to_english).to eq v
    end
  end

  it 'returns proper translations for numbers 11-19' do
    {11 => 'eleven',
     12 => 'twelve',
     13 => 'thirteen',
     14 => 'fourteen',
     15 => 'fifteen',
     16 => 'sixteen',
     17 => 'seventeen',
     18 => 'eighteen',
     19 => 'nineteen'
    }.each do |k, v|
      expect(ArabicNumber.new(k).to_english).to eq v
    end
  end

  context 'for double digits numbers' do
    it 'returns proper translations for 10s' do
      {10 => 'ten',
       20 => 'twenty',
       30 => 'thirty',
       40 => 'forty',
       50 => 'fifty',
       60 => 'sixty',
       70 => 'seventy',
       80 => 'eighty',
       90 => 'ninety'
      }.each do |k, v|
        expect(ArabicNumber.new(k).to_english).to eq v
      end
    end

  end
end