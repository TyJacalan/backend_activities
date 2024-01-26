require 'rspec'

def find_smallest_int(arr)
  return nil if arr.empty?

  smallest = arr[0]

  arr[1..-1].each do |element|
    smallest = element if element < smallest
  end

  smallest
end

describe 'find_smallest_int' do
  it 'returns the smallest integer given an array' do
    arr = [34, 15, 88, 2]
    expect(find_smallest_int(arr)).to eq(2)

    arr = [25, 8, -8, 1]
    expect(find_smallest_int(arr)).to eq(-8)
  end
end
