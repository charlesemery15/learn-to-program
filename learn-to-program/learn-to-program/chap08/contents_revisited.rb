#old contents
line_width = 100
puts ("contents".capitalize.center(line_width))
puts ("part one: the trout".upcase.ljust(line_width))
puts ("one:".capitalize.ljust(line_width/3) + "The Terrace Room".center(line_width/3) + "3".rjust(line_width/3))
puts ("two:".capitalize.ljust(line_width/3) + "The Acorn".center(line_width/3) + "19".rjust(line_width/3))
puts ("Three:".capitalize.ljust(line_width/3) + "Lyra".center(line_width/3) + "42".rjust(line_width/3))
#new contents
title = "contents"
chapters = [["The Terrace Room", 3],["The Acorn", 19],["Lyra", 42]]
puts title.capitalize.center(50)
puts
puts "part one: the trout".upcase
chapters.each_with_index do |chapter, idx|
  name, page = chapter
  chapter_number = idx + 1
  first = "#{chapter_number} :  #{name}"
  last = "#{page}"
  puts first.ljust(30) + last.rjust(20)
end
