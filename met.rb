def ask(question)
  while true
    puts question
    input = gets.chomp
    if input == "yes" || input == "no"
      puts " "
      break
    else
      puts "Please answer yes or no"
    end
  end
end

ask "Do you like tacos "
ask "Do you like burritos? "
ask "Do you wet the bed? "
ask "Do you like eating chimichangas? "
puts "Just a few more questions..."
ask "Do you like drinking horchata? "
ask "Do you like eating flautas? "

puts "Thank you for answering the questions! "
