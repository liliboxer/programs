puts "Give me a number 0-100 and I will translate it to you back in english."

def english(number)

    english_tens_places = ["", "ten ", "twenty ", "thirty ", "forty ", "fifty ", "sixty ", "seventy ", "eighty ", "ninety "]
    english_ones_places = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    tens = number/10
    number = number - tens*10

    ones = number

    eng_num = english_tens_places[tens] + english_ones_places[ones]

    eng_num.sub! "ten one" , "eleven"
    eng_num.sub! "ten two" , "twelve"
    eng_num.sub! "ten three" , "thirteen"
    eng_num.sub! "ten four" , "fourteen"
    eng_num.sub! "ten five" , "fifteen"
    eng_num.sub! "ten six" , "sixteen"
    eng_num.sub! "ten seven" , "seventeen"
    eng_num.sub! "ten eight" , "eighteen"
    eng_num.sub! "ten nine" , "nineteen"

    puts eng_num

end


while true
  number = gets.chomp.to_i
  if number <= 0
    puts "Please list a number greater than 0"
  elsif number >= 100
    puts "Please list a number smaller than 100"
  else
    english number
    break
  end
end
