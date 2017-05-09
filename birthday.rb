puts "When is your birthday month? Please answer using numbers only"
puts "Year?"
year = gets.chomp.to_i
puts "Month?"
month = gets.chomp.to_i
puts "Date?"
date = gets.chomp.to_i

def english(x)
  eng_month = ["" , "January " , "Febuary" , "March " , "April " , "May " , "June " ,
            "July " , "August " , "September " , "October " , "November " , "December"]

  english_birthday = eng_month[x]

end

puts "Your birthday is:#{english(month).to_s} #{date}, #{year}"

birthday = Time.local(year, month, date)

age_minutes = Time.now - birthday
age_years = age_minutes / 31557600

puts "Congratulations! You are:#{age_years.to_s} years old! "

puts "Here's a high-five for each year"

puts "\nhigh-five! " * age_years
