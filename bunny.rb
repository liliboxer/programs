carrots = 0

while carrots < 10
  puts "What do you want to do to Chester? "
  puts "Head scratches? "
  puts "Put him on his back? "
  puts "Give Chester carrots  "
  input = gets.chomp
  if input == "Head scratches"
    puts "Chester likes head scratches"
    carrots += 3
  elsif input == "Put him on his back"
    puts "No carrots for Chester"
    carrots += 2
  elsif input == "Give Chester carrots"
    puts "How many carrots do you want to give Chester? "
    number = gets.chomp.to_i
    carrots = carrots + number
  else
    puts "Please type one of the options above"
  end
  if carrots > 1
    carrots -= 2
  elsif carrots == 1
    carrots -= 1
  else
    carrots = 0
  end
  puts "Current Carrot Count: #{carrots}"
end

puts "Mighty Chester, sits upon a pile of carrots"
