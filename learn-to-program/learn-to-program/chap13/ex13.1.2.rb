class Integer #spelt integer wrong lol!!!!
  def to_roman #doesn't need num as in Interger
    n_thousands = (self         / 1000)
    n_hundreds =  (self % 1000  /  100)
    n_tens =      (self %  100  /   10)
    n_ones =      (self %           10)
  #for 1st digit of a 4 digit number
    roman = "M" * n_thousands
  #for 2rd digit of a 4 digit number
    if n_hundreds == 9
      roman = roman + "CM" #as C is 100 therefore 1000-100 CM
    elsif n_hundreds == 4
      roman = roman + "CD" #as D is 500 therefore 500-100 CD
    else
      roman = roman + "D" * (self % 1000 / 500) #from o_roman
      roman = roman + "C" * (self % 500  / 100) #same^
    end
  #for 3rd digit
    if n_tens == 9
      roman = roman + "XC" #100-10
    elsif n_tens == 4
      roman = roman + "XL" #100-50
    else
      roman = roman + "L" * (self % 100 / 50)#from o_roman
      roman = roman + "X" * (self % 50  / 10)#same^
    end
  #for 4th digit
    if n_ones == 9
      roman = roman + "IX" #10-1
    elsif n_ones == 4
      roman = roman + "IV" #5-1
    else
      roman = roman + "V" * (self % 10 / 5)
      roman = roman + "I" * (self % 5  / 1)
    end
    roman
  end
end
puts 73.to_roman
