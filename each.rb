form = ["what is your name?","how old are you? ","what city do you live in? "]
answers = []

form.each do |info|
  puts "#{info}"
  input = gets.chomp.capitalize 
  answers.push(input)
end

puts
puts "Hi #{answers[0]}. You are #{answers[1]} years old and live in #{answers[2]}."
