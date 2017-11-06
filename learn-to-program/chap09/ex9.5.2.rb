def o_roman num
  roman_n = ""
  roman_n = roman_n + "M" * (num / 1000)
  roman_n = roman_n + "D" * (num % 1000 / 500)#not sure how to save the answer from line 3 to carry on...
  roman_n = roman_n + "C" * (num % 500 / 100)
  roman_n = roman_n + "L" * (num % 100 / 50)
  roman_n = roman_n + "X" * (num % 50 / 10)
  roman_n = roman_n + "V" * (num % 10 / 5)
  roman_n = roman_n + "I" * (num % 5 / 1)
end
puts (o_roman(10))
puts (o_roman(7))
puts (o_roman(245))
puts (o_roman(1782))

def m_roman num
  n_thousands = (num / 1000)
  n_hundreds = (num % 1000 / 100)
  n_tens = (num % 100 / 10)
  n_ones = (num % 10)
  #for 1st digit of a 4 digit number
  roman_n = "M" * n_thousands
  #for 2rd digit of a 4 digit number
  if n_hundreds == 9
    roman_n = roman_n + "CM" #as C is 100 therefore 1000-100 CM
  elsif n_hundreds == 4
    roman_n = roman_n + "CD" #as D is 500 therefore 500-100 CD
  else
    roman_n = roman_n + "D" * (num % 1000 / 500) #from o_roman
    roman_n = roman_n + "C" * (num % 500 / 100) #same^
  end
  #for 3rd digit
  if n_tens == 9
    roman_n = roman_n + "XC" #100-10
  elsif n_tens == 4
    roman_n = roman_n + "XL" #100-50
  else
    roman_n = roman_n + "L" * (num % 100 / 50)#from o_roman
    roman_n = roman_n + "X" * (num % 50 / 10)#same^
  end
  #for 4th digit
  if n_ones == 9
    roman_n = roman_n + "IX" #10-1
  elsif n_ones == 4
    roman_n = roman_n + "IV" #5-1
  else
    roman_n = roman_n + "V" * (num % 10 / 5)
    roman_n = roman_n + "I" * (num % 5 / 1)
  end
  roman_n
end
puts (m_roman(2456))
puts (m_roman(2))
puts (m_roman(4))
puts (m_roman(1944)) #M:1000 CM:900 XL:40 IV:4
