# Get the centurty of a given year
# No using ceil method

def centuryFromYear(year)
  (year + 99) / 100
end

p centuryFromYear(1705)
p centuryFromYear(1900)
p centuryFromYear(1601)
p centuryFromYear(2000)
