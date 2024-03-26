# Create a function that when provided with a triplet, 
# return the index of the numberical element that lies between the other two element.
# The input to the function will be an array of three distinct numbers (Haskell: a tuple)
# gimme([2,3,1]) => 0 since '2' is the number that fits between 1 and 3, the array is 0
# no using of the sort method

def gimme(arr)
  return 'Must be an array' unless arr.is_a?(Array)
  return 'Array must contain exactly 3 numbers' unless arr.length ==3
  arr.each do |element|
    return 'All elements must be numbers' unless element.is_a?(Numeric)
  end

  max = arr.max
  min = arr.min

  arr.each_with_index do |num, i|
    if num != max && num != min
      return "#{i} is the index since #{num} is the number that fits between #{min} and #{max}"
    end
  end
end

p gimme([2,3,1])
p gimme([2,3,1,4])
p gimme(["a","b","c"])
p gimme([15,10,4])
