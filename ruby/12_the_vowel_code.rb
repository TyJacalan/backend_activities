def encode(str)
    vowel_pairs = {'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5}
    encoded_str = ""

    str.each_char do |char|
        if vowel_pairs[char]
            char = vowel_pairs[char].to_s
        end

        encoded_str += char
    end

    encoded_str
end

def decode(str)

    number_pairs = {1 => 'a', 2 => 'e', 3 => 'i', 4 => 'o', 5 => 'u'}
    decoded_str = ""

    str.each_char do |char|
        if number_pairs[char.to_i]
            char = number_pairs[char.to_i]
        end
        
        decoded_str += char
    end
    decoded_str
end

encoded = encode("hi there")
puts encoded
puts decode(encoded)