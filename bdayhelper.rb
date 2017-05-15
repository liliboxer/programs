require "pp"
hash = {}
File.open("bdaylist.txt") do |this|
  this.each do |line|
    name, birthday = line.chomp.split("\t")
    hash[name] = birthday
  end
  pp hash
end

puts "Give me a name and I will tell you their birthday"
puts "#{birthday}"
