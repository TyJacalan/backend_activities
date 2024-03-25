# Create a function that when provided with a triplet, 
# return the index of the numberical element that lies between the other two element.
# The input to the function will be an array of three distinct numbers (Haskell: a tuple)
# gimme([2,3,1]) => 0 since '2' is the number that fits between 1 and 3, the array is 0

def gimme(arr)
  return p 'Must be an array' unless arr.is_a?(Array)
  return p 'Array must contain exactly 3 numbers' unless arr.length ==3
  arr.each do |element|
    return p 'All elements must be numbers' unless element.is_a?(Numeric)
  end

  max = arr.max
  min = arr.min
  
  arr.each_with_index do |num, i|
    if num != max && num != min
      p "#{i} is the array since #{num} is the number that fits between #{min} and #{max}"
    end
  end
end

gimme([2,3,1])
gimme([2,3,1,4])
gimme(["a","b","c"])
gimme([15,10,4])
