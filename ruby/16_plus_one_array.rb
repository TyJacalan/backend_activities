def up_array(numbers)
  return nil unless is_valid?(numbers)

  numbers.join.to_i + 1
end

def is_valid?(arr)
  return false unless arr.is_a?(Array) && !arr.empty?
  return false unless arr.all? { |num| num.is_a?(Integer) && num.between?(0, 9) }

  true
end

p up_array(123)        # nil
p up_array([-1,2,6])   # nil
p up_array([10,1,3])   # nil
p up_array([2,3,9])    # 240
p up_array([4,3,2,5])  # 4236
