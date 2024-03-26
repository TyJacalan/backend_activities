VOWELS = {
  'a' => 1,
  'e' => 2,
  'i' => 3,
  'o' => 4,
  'u' => 5
}

# Create a function called encode to replace all the lowercase vowels in a given string with numbers according to the following pattern
# Create a function called decode to turn the numbers back into vowels according to the same pattern
# Conditions: do not use gsub

def encode(str)
    str.chars.map do |char|
        VOWELS[char] || char
    end.join
end

def decode(str)
    str.chars.map do |char|
        VOWELS.key(char.to_i) || char
    end.join
end

encoded = encode("hi there")
p encoded
p decode(encoded)
