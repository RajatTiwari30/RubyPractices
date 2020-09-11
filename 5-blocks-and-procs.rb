
# A simple method
# Every method in Ruby takes an implicit block
# of code as parameter
def hug (message)
  puts message
  puts "{"
  yield "hey"
  puts "}"
  yield "goodbye", "see you"
end

 # invoke the method
hug "Me again" do |message, message2|
  puts "Thank You: #{message} - #{message2}"
end

# proc
my_proc = proc do 
  # any valid ruby code
  puts "I am in a proc"
end

# CALL THE PROC
my_proc.call

# & will convert proc to block
hug "Custom message", &my_proc