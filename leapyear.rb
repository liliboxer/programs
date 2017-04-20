puts "Type a year "
a = gets.chomp.to_i
puts "Type another year "
b = gets.chomp.to_i

while a <= b
  if a % 4 == 0 || a % 100 != 0 || a % 400 ==0
      puts a
    end
  end
    a += 1
end
