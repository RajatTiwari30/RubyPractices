
# Arrays []

fruits = ["apple", "orange","mango"]

# Destructuring
first, *rest = ["apple", "orange","mango","pineapple"]
puts first, rest.inspect

# Ignore rest
first, * = ["apple", "orange","mango","pineapple"]
puts first

# Get first and last and ignore rest
first, *, last = ["apple", "orange","mango","pineapple"]
puts first, last


