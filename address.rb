puts "Let's make an address book! "
puts "Give me three names, first name then last name . "
name = 0
book = []

while true
  if name < 3
    puts "What is their first name? "
    first_name = gets.chomp
    puts "What is their last name? "
    last_name = gets.chomp
    full_name = first_name + " " + last_name
    puts full_name
    book.push(full_name)
    name += 1
  else
    name == 3
    break
  end
end

puts book
