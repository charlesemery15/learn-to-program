puts "What is your name?"
name = gets.chomp
if name == "Will" || name == "Malcolm"
  puts "Are you looking for Lyra?"
elsif name == "Lyra"
  puts  "Are you looking for Will?"
else
  puts "Have a good day " + name
end
