time = 8
biscuits = 20

while biscuits < 100
  puts "Threaten Max with oranges? "
  threat = gets.chomp
  if threat == "yes"
    if rand(1..100) >= 50
      biscuits -= 20
      puts "Max dropped the tray! "
    else
        biscuits += 20
        puts "Max made 20 biscuits this hour! "
    end
  else
    if rand(1..100) <= 25
      biscuits -= 15
      puts "Max dropped his tray! "
    else
      biscuits += 15
      puts "Max made 15 biscuits this hour! "
    end
  end
  time -= 1
  if time == 0
    puts "You're fired Max!"
    break
  elsif biscuits <= 0
    puts "You're fired Max! "
    break
  elsif biscuits >= 100
    puts "You did it Max! Final biscuit count: #{biscuits}"
  else
    puts "Max's biscuit count is at: #{biscuits} "
    puts "Time remaining: #{time}"
    puts "Will he get fired? "
  end
end
