# Reverse every word in a given string
# Then return the string
# Throw away any leading or trailing whitespace
# Ensure that there is only one space between each word
# Punctuation marks should be treated as if they are part of the word

def reverse_alternate(string)
  words = string.split(" ")
  reversed = ""

  words.each do |word|
    reversed += word.downcase.reverse
    reversed += " " unless words.last == word
  end

  reversed.capitalize
end

p reverse_alternate("Did it work?") # Did ti ?krow
p reverse_alternate("Hello  World") # Olleh dlrow
p reverse_alternate(" ")             # ""
