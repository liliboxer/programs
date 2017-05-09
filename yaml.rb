require "yaml"

bunny_array = ["Chester is:\nFeared\nand\nRespected"]
bunny_string = bunny_array.to_yaml

filename = "Chester'sCharacteristics.txt"

File.open filename, "w" do|f|
  f.write bunny_string
end

read_string = File.read filename

read_array = YAML::load read_string

puts (read_string == bunny_string)
puts (read_array == bunny_array)
