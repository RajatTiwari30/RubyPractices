
menu = {"burger": 3, "taco": 5, "chips": 1}
p menu

menu1 = {:coke => 4, :pepsi => 5}
p menu1

menu2 = {dosa: 10, idli: 5}

p menu2 

p menu[:burger]
p menu1[:pepsi]


menu1[:pepsi] = 10

p menu1 
p menu1[:thumbsup]  # key not present

# Default value if key is not found
p menu1.fetch(:thumbsup, "Thumbsup is not in stock")

p menu2.fetch(:dosa)


cities = {mumbai: 2.2, delhi: 2.3, chennai: 2.5}

# Loop through hash
cities.each do |key, value| 
  puts "#{key} = #{value}"
end

# Loop through keys
cities.each_key do |key|
  puts key
end

# Loop through values
cities.each_value do |value|
  puts value
end

# Get index of iteration as well
cities.each_with_index do |(key, value), index|
  puts "index: #{index} | key: #{key} | value: #{value}"
end













