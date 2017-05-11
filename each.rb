form = ["what is your name?","how old are you? ","what city do you live in? "]


form.each do |info|
  puts "#{info}"
  input = gets.chomp
end
