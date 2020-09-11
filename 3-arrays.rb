# methods with ? at the end (boolean)
# methods with ! at the end (destructive method)

# Create arrarys
fruits = ["orange", "pineapple", "chickoo", "mango"]


puts fruits[1]   # pineapple

puts fruits.first   # orange
puts fruits.last    # mango 

# pop method -> remove last item
puts fruits.pop # removes the last item

puts "Remaining fruits..."
puts fruits

fruits.push("grapes");

fruits << "papaya"  # add item to end

puts fruits.last

fruits << "watermelon"


p fruits 

# Remove first item "shift"
p fruits.shift
p fruits

p fruits.reverse  # new reversed array back
p fruits

s = [ 1, 2, 3 ]           #=> [1, 2, 3]
t = [ 4, 5, 6, [7, 8] ]   #=> [4, 5, 6, [7, 8]]
a = [ s, t, 9, 10 ]       #=> [[1, 2, 3], [4, 5, 6, [7, 8]], 9, 10]
p a.flatten      


# Some more methods
puts "Shuffle"

p fruits.shuffle 
p fruits.shuffle 
p fruits.shuffle!  # This will change the original array 

p fruits

# map method
puts "Map methods"

fruits2 = fruits.map do |fruit| 
  fruit.to_sym  # last expression is returned
end

p "Fruits 2: ", fruits2

# hash = { key1: "val1", key2: "val2"}

nums = [1,2,3,4,5,6]
p nums
squares = nums.map do |n|
  {index: n * n}
end
p squares

p squares[0][:index]


# array of numbers
numbers = [1,2,3,4,5,6,7,8,9,10]


# greater_4 = numbers.select do |n|
#   n > 4
# end

greater_4 = numbers.select {|n| n > 4 }
p greater_4











