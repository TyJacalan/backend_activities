require 'rspec'

def square_of_squares(num)
  return false if num < 0

  num_to_subtract = 1

  while num > 0
    num -= num_to_subtract
    num_to_subtract += 2
  end

  num == 0
end

describe 'square_of_squares' do
  it 'checks if a given integer is a perfect square' do
    expect(square_of_squares(-1)).to eq(false)
    expect(square_of_squares(0)).to eq(true)
    expect(square_of_squares(3)).to eq(false)
    expect(square_of_squares(4)).to eq(true)
    expect(square_of_squares(25)).to eq(true)
    expect(square_of_squares(26)).to eq(false)
  end
end
