number = 100

def sing(number)
  new_number = number - 1
puts "#{number} bottles of beer on the wall, #{number} bottles of beer! "
puts "Take one down, pass it around #{new_number} bottles of beer on the wall"
end

while number > 1
  number -=1
  sing(number)
end
