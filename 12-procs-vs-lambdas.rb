# First difference
# procs don't care about missing arguments but lambdas do care

some_proc = Proc.new { |name, age| "Your name is #{name} - #{age}"}

p some_proc.call("Cat")  # here age is omitted

some_lambda = lambda { |name, age| "Your name is #{name} - #{age}"}

# p some_lambda.call("Tiger")  # Throw error
p some_lambda.call("Tiger", 32)


# Second Difference
# The return values (behaviour is different)

def dietproc 
  status = Proc.new { return "You gave in!"}
  p status.call 
  "You completed the diet!!"
end

result_proc = dietproc
p result_proc


def dietlambda
  status = lambda { return "You gave in!"}
  p status.call 
  "You completed the diet!!"
end
puts "--------------------------"
result_lambda = dietlambda
puts "--------------------------"
p result_lambda






















