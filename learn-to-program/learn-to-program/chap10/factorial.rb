def factorial(num)
  if num < 0
    return "can't take a factorial of a negative!"
  end
  if num <= 1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(3)
puts factorial(-1)
puts factorial(9999)
