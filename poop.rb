poop = 0
people = 1

while poop < 100 || people > 0
  puts "What do you want to do to Chester? "
  puts "Select from the following: "
  puts "A : give Chester a carrot "
  puts "B : give Chester lettuce "
  puts "C : give Chester an onion "
  puts "D : give him nothing and leave the room "
  response = gets.chomp
  if response == "A"
    poop += 10
    people = 1
    puts "Chester loves carrots! Carrot count: #{poop}"
  elsif response == "B"
    poop += 15
    people = 1
    puts "Lettuce is healthy for Chester! Carrot count: #{poop}"
  elsif response == "C"
    poop += 0
    people = 1
    puts "Are you kidding me? :( No new carrots. Carrot count: #{poop} "
  elsif response == "D"
    poop += 0
    people = 0
    puts "I want carrots! No new carrots. Carrot count: #{poop} "
  else
    puts "Please choose A, B, C, or D"
    poop += 0
  end
  if poop >= 100 && people == 0
    puts "Chester can sleep!"
    break
  elsif poop > 150 && people == 1
    puts "Seriously!! GTFO >:( "
  elsif poop > 100 && people == 1
    puts "I'm ready to sleep now!! GET OUT "
  elsif poop < 100 && people == 0
    puts "Chester can't sleep because he doesn't have enough carrots! "
    break
  end
end
