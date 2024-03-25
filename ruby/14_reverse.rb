def reverse_string(str)
  return p "Must be a string" unless str.is_a?(String)

  reverse = []

  str.chars.each do |s|
    reverse.unshift(s)
  end

  p reverse
end

reverse_string("hello")
reverse_string(1)
reverse_string(["hello", "world"])
