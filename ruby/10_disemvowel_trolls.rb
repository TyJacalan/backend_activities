def disemvowel_trolls(str)
  str.gsub(/[aeiouAEIOU]/, '')
end

puts disemvowel_trolls("This website is for loser's LOL")
