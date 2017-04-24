puts "Say something to grandma"
bye = 0

while bye < 3
  input = gets.chomp
  if input != input.upcase
    puts "HUH?! SPEAK UP LOUDER SONNY!"
    bye = 0
  elsif input == "BYE"
    bye += 1
    if bye <= 2
      puts "YOU DON'T REALLY MEAN THAT "
    end
  else
    year = rand(1930..1950)
    puts "NO, NOT SINCE #{year}"
    bye = 0
  end
end

puts "I'M SAD TO SEE YOU GO "
