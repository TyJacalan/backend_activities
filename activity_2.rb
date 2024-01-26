puts "#1"
def check_number(arr, number)
    arr.include?(number)
  end
  
  arr = [1, 3, 5, 7, 9, 11]
  number = 3
  
  puts check_number(arr, number)

puts "#2"
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

puts "#3"
def get_letter_from_user
    loop do
      puts "Give me a letter between 'a' to 'z' or enter 'STOP' to end the loop:"
      user_input = gets.chomp.downcase
  
      if user_input == 'stop'
        puts 'Bye!'
        break
      elsif ('a'..'z').include?(user_input)
        puts "You entered: #{user_input}"
      else
        puts "Invalid input. Please enter a letter between 'a' to 'z'."
      end
    end
  end
  
  get_letter_from_user

  puts "#4"
  

