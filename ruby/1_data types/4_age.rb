#Write a program called age.rb that asks a user how old they are and then tells them how old they will be in 10, 20, 30 and 40 years.

puts 'Activity #4'
puts 'How old are you?'
user_age = gets.chomp.to_i

(1..4).each do |multiplier|
  future_age = user_age + 10 * multiplier
  puts "In #{multiplier * 10} years you will be"
  puts "In #{multiplier * 10} years you will be #{future_age}"
end

