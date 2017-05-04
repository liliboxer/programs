puts "Give me words to sort: "
words = []

while true
  word = gets.chomp
  if word == ""
    break
  end
  words.push word
end

puts "Here are your words sorted: "
puts words.sort
