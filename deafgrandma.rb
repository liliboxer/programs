bye = 0

while bye <3
  response = gets.chomp

  if response == "BYE"
    bye += 1
    if bye <3
      puts "I THOUGHT THE SAME THING"
    end

  elsif response = response.upcase
    number = rand(1930...1950)
    puts "NO! NOT SINCE #{number}"
    bye = 0

  else
    puts "HUH?! SPEAK UP SONNY!"
    bye = 0
  end

  if bye == 3
    puts "I'M SAD TO SEE YOU GO"
  end

end
