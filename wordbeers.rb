puts "Let's sing a song! Type a number less than 9,999 to start singing! "

def word(bottles)
  eng_higher_places = ["" , "hundred " , "thousand "]
  eng_tens_places = ["" , "ten " , "twenty " , "thirty " , "forty " , "fifty " ,
                  "sixty " , "seventy " , "eighty " , "ninety " ]
  eng_ones_places = ["" , "one " , "two " , "three " , "four " , "five " , "six " ,
                  "seven " , "eight " , "nine "]

  thousands_place = bottles / 1000
  bottles = bottles - thousands_place * 1000
  tp = 0
  if thousands_place > 0
    tp = 2
  end

  hundreds_place = bottles / 100
  bottles = bottles - hundreds_place * 100

  hp = 0
  if hundreds_place > 0
    hp = 1
  end

  tens_place = bottles / 10
  bottles = bottles - tens_place * 10


  ones_place = bottles

  eng_num = eng_ones_places[thousands_place] + eng_higher_places[tp] +
  eng_ones_places[hundreds_place] + eng_higher_places[hp] +
   eng_tens_places[tens_place] + eng_ones_places[ones_place]

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

bottles = 0
bottles = gets.chomp.to_i

while bottles < 9999
  puts word(bottles).to_s + "Bottles of beer on the wall,"
  puts word(bottles).to_s + "bottles of beer! "
  puts "Take one down, pass it around "
  puts word(bottles-1).to_s + "bottles of beer on the wall!"
  puts " "
  bottles -= 1
  if bottles == 1
    puts "one Bottle of beer on the wall, "
    puts "one bottle of beer! "
    puts "Take one down, pass it around, no more bottles of beer on the wall! "
    break
  end

end
