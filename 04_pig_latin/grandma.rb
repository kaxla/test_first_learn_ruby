
say = "whatever"

while say != "BYE BYE BYE"
puts "what do you want to say to grandma?"
say = gets.chomp
year = rand(49)

  if say == say.upcase
    puts "NO, NOT SINCE #{year + 1900}!"
  else 
    puts "HUH?! SPEAK UP, SONNY!"
end
end