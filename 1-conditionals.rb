# To create an array
# sample -> select a random value from the array
result = ["heads", "tails"].sample  # You create an array (even in javascript also)

if result == "heads"
  puts "The coin toss came up 'heads'"
else 
  puts "The coin toss came up 'tails'"
end


# if expression
age  = 18
status = if age < 18
    :minor   # symbol
else 
  :adult
end

p status

# Ternary
status = age < 18 ? :minor  : :adult 
p status 

# symbols and strings are substitutable
shirt_size = :l
label = if shirt_size == :s 
  "small"
elsif shirt_size == :m 
  "medium"
elsif shirt_size == :l 
  "large"
else
  "unknown size"
end

puts "The shirt size is #{label}"


# case statement
age = 19
case age 
when 18,19,20
  puts "You are an adult now!"
when 10
  puts "Still a kid"
else 
  puts "Let me guess!"
end

# Only print age if the value is 19
puts "Age is #{age}"  if age == 19




























