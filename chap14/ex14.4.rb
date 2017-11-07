def grandfather &block
  hour = Time.new.hour
  if hour >= 13
    hour = hour - 12 #so if (hour = 13) 13 - 12 = 1
  elsif
    hour == 0
    hour = 12
  else
    hour
  end
  hour.times do
    block.call
  end
end
grandfather do
   puts "Dong!"
end
