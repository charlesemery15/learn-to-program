#Billion seconds - 2024-05-24 07:06:40 UTC
puts (Time.gm(1992, 9, 15, 5, 20) + 10 ** 9)
#Birthday
#puts "what year were you born?"
#year = gets.chomp.to_i
#puts "what month (1-12) were you born in?"
#month = gets.chomp.to_i
#puts "what day were you born?"
#day = gets.chomp.to_i
#combine them
#relate them to Time
#birthday = Time.local(year, month, day)
#t = Time.new
#age = 1
#while Time.local(year, month, day) <= t
  #puts "spank!"
  #age = age + 1
#end
#chris' way
puts "Hey please enter the date you were born (YYYYMMDD), cheers!"
input = gets.chomp
i_year = input[0..3].to_i
i_month = input[4..5].to_i
i_day = input[6..6].to_i
t = Time.new
t_year = t.year
t_month = t.month
t_day = t.day
age = t_year - i_year
if t_month < i_month || (t_month == i_month && t_day < i_day)
  age -= 1
end
if t_month == i_month && t_day == i_day
  puts "Happy Birthday!"
end
age.times { puts "spank!"}
