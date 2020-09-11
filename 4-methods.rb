def greeting (message)
  "Hello #{message}"  # automatically returned
end


p greeting ("good morning rajesh")


# with default parameter
def write(file, data, mode = "w")
  puts "#{data} is being written to #{file} in #{mode} mode"
end

write("hello.txt", "welcome message")

# sums integers or floats
def sum(*args) 
  puts args.inspect
  result = 0
  args.each do |item| 
    result = result + item
  end
  result
end

puts sum(1,2)
puts sum(1,2,3,4)
puts sum(1,2,3,4,5,6,7,8,9)



