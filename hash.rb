dict_array = []
dict_hash = {}

dict_array[0] = "Chester"
dict_array[1] = "Max"
dict_array[2] = "Lili"
dict_array[3] = "Nick"
dict_hash["bunny"] = "Chester"
dict_hash["kitty"] = "Max"
dict_hash["lady"] = "Lili"
dict_hash["dude"] = "Nick"

dict_array.each do |word|
  puts word
end

dict_hash.each do |title, word|
  puts "#{title} : #{word}"
end
