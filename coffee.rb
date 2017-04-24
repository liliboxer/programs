time = 0
dollars_total = 0 

while time < 10
  purchases = rand(3..10)
  people = rand(20..50)
  dollars_hour = people * purchases
  dollars_total = dollars_total + dollars_hour
  time += 1
  if time == 10
    return dollars_total
  end
end

profit = dollars_total - 2000

if profit > 0
  puts "Max and Chester get to take home $#{profit}"
elsif profit == 0
  puts "You made #{dollars_total} and broken even"
else
  profit < 0
  puts "You looooose! "
end
