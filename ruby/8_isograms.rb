def is_isogram(str)

    downcased_str = str.downcase
  
    # Use a set to keep track of unique characters
    unique_chars = Set.new
  
    # Iterate through each character in the string
    # If the character is already in the set, it is not an isogram
    # Otherwise, add it to the set and continue iteration
    downcased_str.each_char do |char|
      return false if unique_chars.include?(char)
  
      unique_chars.add(char)
    end
  
    return true
  
  end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")