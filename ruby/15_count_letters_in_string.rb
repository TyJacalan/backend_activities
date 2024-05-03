# Count lowercase characters in a given string
# Return the letter count in a hash with 'letter' as key and 'count' as value
# The 'key' must be a symbol instead of a string

def letter_count(string)
  string_arr = string.chars
  string_arr = remove_uppercase_letters(string_arr)

  string_hash = Hash.new 0
  string_arr.each { |char| string_hash[char] += 1 }

  # Alternatively, use the 'tally' built-in method
  # string_arr.tally
 
  string_hash
end

def remove_uppercase_letters(arr)
  arr.reject { |letter| letter == letter.upcase }
end

p letter_count('arithmetic')
p letter_count('ARITMETIC') #this should return nothing
