squares_proc = Proc.new  { |number|  number * number}
squares_lambda = lambda { |number| number * number}

p squares_proc.call(4)
p squares_proc.call(5)

p [1,2,3].map(&squares_proc)
p [1,2,3].map(&squares_lambda)

# Shortcut to create lambda
twice = -> (x) { 2 * x }

p twice.call(20)   # 40
