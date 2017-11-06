puts "Please enter your first name?"
f_name = gets.chomp
puts "Now, enter your middle name"
m_name = gets.chomp
puts "Finish with your last name"
l_name = gets.chomp
puts "You're full name is..."
puts f_name + " " + m_name + " " + l_name

puts "Enter your favourite number"
f_num = gets.chomp
bb_num = f_num.to_i + 1
puts bb_num.to_s + " is a bigger better number!"
