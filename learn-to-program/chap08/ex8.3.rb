puts "Enter some words to sort"
a_words = []
while 1 < 2
  e_word = gets.chomp
  break if e_word.empty?
  a_words.push e_word
end
puts a_words.sort
