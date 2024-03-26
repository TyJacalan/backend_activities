def reverse_string(str)
  return "Must be a string" unless str.is_a?(String)

  reverse = ''

  str.each_char do |s|
    reverse = s + reverse
  end

  reverse
end

p reverse_string("hello")
p reverse_string(1)
p reverse_string(["hello", "world"])
