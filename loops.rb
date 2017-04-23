puts "Say something to grandma"
input = gets.chomp

while input != input.upcase
  puts "HUH?! SPEAK UP LOUDER SONNY!"
  inputs = gets.chomp
  if input == input.upcase
    break 
    puts "NO, NOT SINCE 1938!"
  end
end
