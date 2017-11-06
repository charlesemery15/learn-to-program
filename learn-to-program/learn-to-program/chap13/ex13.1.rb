class Array
  def shuffle
    sort_by{rand}#needed to get rid of the arr. as in the Array class
  end
end
puts ["charles", "james", "william", "peter", "pamela"].shuffle
