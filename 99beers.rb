puts "How many beers should we start with? "
x = gets.chomp
puts "How many beers should we end with? "
y = gets.chomp

x = x.to_i
y = y.to_i

while x > y
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer! "
  x -= 1
  puts "Take one down, pass it around, #{x} bottles of beer on the wall! "
  if x == y
    break
  end
end
