puts "How should Max try and wake Lili?"
puts "He can: wag tail, biscuit, or vomit "
time = 0

while time < 4
  action = gets.chomp
  if action == "wag tail"
    if rand(1..100) <= 10
      puts "Lili woke up! "
      if rand(1..100) <=50
        puts "Lili fed Max! "
      else
        puts "Lili did not feed Max "
      end
    else
      puts "Lili is still sleeping"
    end
  elsif action == "biscuit"
    puts "Lili is still sleeping"
  elsif action == "vomit" && time < 2
      puts "It's not 6am yet. "
  elsif action == "vomit" && time >= 2
    if rand(1..100) <=10
      puts "Max vomited"
      puts "Lili woke up"
    else
      puts "Max couldn't vomit. "
    end
  else
    puts "Please choose from the following: wag tail, biscuit, or vomit. "
  end

  time += 0.25
  puts "Time elapsed: #{time}"
end
