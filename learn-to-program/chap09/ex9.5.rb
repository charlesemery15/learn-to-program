def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    #if (reply == "yes" || reply == "no")
    if reply == "yes"
      #answer = true
    #else
      #answer = false
      return true #can be anything thats "true" #new code
    end
    #break
  #else
    #puts "answer yes or no"
  #end
#end
    if reply == "no" #new code vvv
      return false
    end
    puts "Answer yes or no"
  end
end
the_question = ask "do you like Man City?"
puts the_question
ask "do you like fries?"
ask "do you like meat?"
