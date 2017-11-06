def sorting arr
  arr.sort_by { |word| word.upcase }
end

puts (sorting(["charles", "James", "william", "Peter", "pamela"]))
