puts "Give me a number 0-999999999 and I will translate it to you back in english."

def english(number)

    english_higher_places = ["" , "hundred " , "thousand " , "million "]
    english_tens_places = ["", "ten ", "twenty ", "thirty ", "forty ", "fifty ",
                            "sixty ", "seventy ", "eighty ", "ninety "]
    english_ones_places = ["", "one ", "two ", "three ", "four ", "five ", "six ",
                            "seven ", "eight ", "nine "]

    tp = 0
    htp = 0
    mp = 0

    hundreds_millions_place = number /100000000
    number = number - hundreds_millions_place * 100000000

    hmp = 0
    if hundreds_millions_place > 0
      hmp = 1
      mp = 3

    end

    ten_millions_place = number / 10000000
    number = number - ten_millions_place * 10000000

    tmp = 0
    if ten_millions_place > 0
      tmp = 3
      mp = 3
    end

    millions_place = number / 1000000
    number = number - millions_place * 1000000

    if millions_place > 0
      mp = 3
    end

    hundreds_thousands_place = number / 100000
    number = number - hundreds_thousands_place * 100000


    if hundreds_thousands_place > 0
      tp = 2
      htp = 1
    end

    ten_thousands_place = number / 10000
    number = number - ten_thousands_place * 10000

    ttp = 0
    if ten_thousands_place > 0
      tp = 2
    end


    thousands_place = number / 1000
    number = number - thousands_place * 1000

    if thousands_place > 0
      tp = 2
    end

    hundreds_place = number / 100
    number = number - hundreds_place * 100

    hp = 0
    if hundreds_place > 0
      hp = 1
    end

    tens_place = number / 10
    number = number - tens_place * 10

    ones_place = number


    eng_num = english_ones_places[hundreds_millions_place] + english_higher_places[hmp] +
    english_tens_places[ten_millions_place] + english_ones_places[millions_place] +
    english_higher_places[mp] + english_ones_places[hundreds_thousands_place] +
    english_higher_places[htp] + english_tens_places[ten_thousands_place] +
    english_ones_places[thousands_place] + english_higher_places[tp] +
    english_ones_places[hundreds_place] + english_higher_places[hp] +
    english_tens_places[tens_place] + english_ones_places[ones_place]

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
  elsif number > 999999999
    puts "Please list a number smaller than 999999999"
  else
    english number
    break
  end
end
