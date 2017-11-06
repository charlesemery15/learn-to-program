input = " "
while input != "mug"
  puts input
  input = gets.chomp
end
puts "fine you mug"

while 1 < 2
  input = gets.chomp
  puts input
  if input == "mug"
    break
  end
end
puts "see ya mug"
