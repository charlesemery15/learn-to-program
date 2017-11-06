birth_date = {}
File.read("birthdates.txt").each_line do |line|
  line = line.chomp
  first_c = 0 #unlike clmystry no label to names so only common symbol is ","
  while line[first_c] != "," && first_c < line.length
    first_c = first_c + 1
  end
  name = line[0...(first_c)]
  date = line[-12..-1]#Date is on the last 12 spaces of each names
  birth_date[name] = date
end
puts "who's birthday?"
name = gets.chomp
date = birth_date[name]
if date == nil
  puts "Not in file"
else
  puts date[0...12]
end
