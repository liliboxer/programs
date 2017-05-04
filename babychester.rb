puts "Chester needs to feed! What does he do? "
puts "His options are: headbutt, thump, wait"
time = 0
food = 0

while time < 15 && food == 0
  response = gets.chomp
  if response == "headbutt"
    if rand(1..100) <=15
      puts "Chester gets to feed! :) "
      food += 1
    elsif rand(1..100) <= 30
      puts "Chester got chased off and he didn't get to feed :( "
      food += 0
      time += 1
    else
      puts "Chester doesn't get to eat yet. "
    end
  elsif response == "thump"
    puts "Nothing happened :( "
    food += 0
  elsif response == "wait"
    if rand(1..100) <=5
      puts "Chester gets to feed! :) "
      food += 1
    else
      puts "Chester doesn't get to feed yet"
    end
  else
    puts "Please respond with headbutt, thump, or wait"
  end
  time += 1
  time_remaining = 15 - time
  puts "Time remainging: #{time_remaining}"
  if time == 15 && food == 0
    puts "Chester didn't eat :( "
    break
  elsif time < 15 && food == 1
    puts "Chester gets fed! "
  end

end
