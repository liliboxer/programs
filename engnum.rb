puts "Give me a number 0-100 and I will translate it to you back in english."

def english(number)

    tens_place = ["", "ten ", "twenty ", "thirty ", "forty ", "fifty ", "sixty ", "seventy ", "eighty ", "ninety "]
    ones_place = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]

    left = number/10
    number = number - left*10

    right = number

    eng_num = tens_place[left] + ones_place[right]

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
