require './arabic_number.rb'

RSpec.describe ArabicNumber do

  it 'returns proper translations for 11' do
    expect(ArabicNumber.new(11).to_english).to eq 'eleven'
  end

  it 'returns proper translations for 100' do
    expect(ArabicNumber.new(100).to_english).to eq 'one hundred'
  end

  it 'returns proper translations for numbers 0-9' do
    ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'].each_with_index do |v, i|
      expect(ArabicNumber.new(i).to_english).to eq v
    end
  end
end