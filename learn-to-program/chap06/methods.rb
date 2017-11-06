var1 = "Hedgehog"
var2 = "Rabbit"
reverse
puts var1.reverse
puts var1.length
puts var2.length
puts var2
puts "Please enter your first name"
f_name = gets.chomp
puts "Please enter your middle name"
m_name = gets.chomp
puts "Please enter your last name"
l_name = gets.chomp
w_name_length = f_name.length + m_name.length + l_name.length
puts "there are " + w_name_length.to_s + " letters in your name!"
word = "HeDgEhOg"
puts word.upcase
puts word.downcase
puts word.capitalize
puts word.swapcase
puts " e".capitalize
puts word
line_width = 100
puts ("I hold it true, whate'er befall;".ljust(line_width))
puts ("I feel it when I sorrow most;".center(line_width))
puts ("'Tis better to have loved and lost".rjust(line_width))
puts ("Than never to have loved at all.".ljust(line_width/2) + "In Memoriam A.H.H.".rjust(line_width/2))
