number = 99
new_number = number - 1


def sing()
  number = 99
  new_number = number - 1
puts "#{number} bottles of beer on the wall, #{number} bottles of beer! "
puts "Take one down, pass it around #{new_number} bottles of beer on the wall"
end
#song_lyrics1 = "#{number} bottles of beer on the wall, #{number} bottles of beer! "
#song_lyrics2 = "Take one down, pass it around #{new_number} bottles of beer on the wall"

while number > 0
  #puts song_lyrics1
  #puts song_lyrics1
  #puts song_lyrics2
  sing()
  number -=1
end
