def centuryFromYear(year)
  unless year % 100 == 0
    (year / 100).round + 1
  else
    (year / 100).round
  end
end

puts centuryFromYear(1705)
puts centuryFromYear(1900)
puts centuryFromYear(1601)
puts centuryFromYear(2000)
