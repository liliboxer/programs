puts "Say something to grandma"
input = gets.chomp

while input != input.upcase
  puts "HUH?! SPEAK UP LOUDER SONNY!"
  input = gets.chomp
  if input == input.upcase
    year == year.rand(1930..1950)
    puts "NO, NOT SINCE #{year}"
    break
  end
end
