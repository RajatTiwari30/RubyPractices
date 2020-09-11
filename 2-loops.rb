# Simple Loop
# loop do 
#   puts "This will run for ever.  Press ctrl + c"
# end


# A more useful loop (exit conditionally)
i = 0
loop do 
  puts i 
  i += 1
  if i == 10  
    break   # get out of theloop
  end
end


puts "---------------------"
# Skipping code 
i = 0 
loop do 
  i += 2
  if i == 4 
    next   # skip rest of the code in this iteration
  end
  puts i

  if i == 10 
    break
  end
end

# While Loop
puts "Enter your age: "
# age = gets.chomp.to_i
age = 5
puts age 

while age >= 0 
  puts age 
  age = age - 1
end



# Until
puts "Until loop..."
age = 5

until age < 0 
  puts age 
  age -= 1
end

puts "Done!"


# Do while loop
loop do 
  puts "Do this always"
  puts "Do you want to continue?"
  answer = gets.chomp 
  if answer != "y" 
    break
  end
end

# for loop
nums = [1,2,3,4,5]

puts "For loop..."
for i in nums do  
  puts i
end


