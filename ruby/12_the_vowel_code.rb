VOWELS = {
    'a' => 1,
    'e' => 2,
    'i' => 3,
    'o' => 4,
    'u' => 5
}

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
puts encoded
puts decode(encoded)