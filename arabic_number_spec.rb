require './arabic_number.rb'

RSpec.describe ArabicNumber do
  it 'returns proper translations for 1' do
    expect(ArabicNumber.new(1).to_english).to eq 'one'
  end

  it 'returns proper translations for 11' do
    expect(ArabicNumber.new(11).to_english).to eq 'eleven'
  end

  it 'returns proper translations for 100' do
    expect(ArabicNumber.new(100).to_english).to eq 'one hundred'
  end
end