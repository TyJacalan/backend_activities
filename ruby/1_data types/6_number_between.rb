#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100

def number_between(number)
  case number
  when 0..50
    puts 'between 0-50'
  when 51..100
    puts 'between 50-100'
  else
    puts 'above 100'
  end
end

puts 'Enter a number between 0 and 100:'
user_number = gets.chomp.to_i

puts number_between(user_number)