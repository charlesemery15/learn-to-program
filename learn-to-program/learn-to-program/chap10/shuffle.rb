def shuffle arr
  arr.sort_by{rand}
end
puts (shuffle(["charles", "james", "william", "peter", "pamela"]))
