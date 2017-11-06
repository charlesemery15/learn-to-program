puts "Enter some words to sort"
a_words = []
while 1 < 2
  e_word = gets.chomp
  break if e_word.empty?
  a_words.push e_word
end
puts a_words.sort

#def sort some_array
  #recursive_sort some_array, []
#end

#def recursive_sort unsorted_array, sorted_array
  #if unsorted_array.length <= 0
    #return sorted_array
#end
#take the last value in the unsorted_array compare it to another value in new test_unsorted array
#if value less .push it to unsorted_array
#continue untill all values in unsorted are in value order.
#smallest = unsorted_array.pop #last value in unsorted_array, removing
#test_unsorted = []
#unsorted_array.each do |test_word|
  #if test_word < smallest
    #test_unsorted.push smallest
    #smallest = test_word
  #else
    #test_unsorted.push test_object
  #end
#end
#sorted_array.push smallest
#recursive_sort test_unsorted, sorted_array
#end
#puts(sort(["charles","james","william","pamela","peter","alice",]))
#chris Pine method
def sort arr
  return arr if arr.length <= 1
  middle = arr.pop
  less   = arr.select{|x| x <  middle}
  more   = arr.select{|x| x >= middle}
  sort(less) + [middle] + sort(more)
end
puts(sort(["charles","james","william","pamela","peter","alice",]))
