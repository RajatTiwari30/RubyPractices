# Hash
family = {
  sisters: ["s1","s2","s3"],
  brothers: ["b1","b2","b3"],
  uncles: ["u1","u2","u3"],
  aunts: ["a1","a2","a3"]
}

# Nearest family members
# reduce -> or it's alias 'inject'
near_members = family.reduce([]) do |arr, (k,v)|
  p arr
  p k, v
  if (k == :sisters || k == :brothers)
    arr << v
  end
  arr
end

p near_members.flatten

puts "--------------------------------"

nums = [1,2,3,4,5]
result2 = nums.reduce do |prev, curr|
  p "#{prev} - #{curr}"
  p "ACCUR: #{prev}"
  prev + curr
end

p result2


nums = [1,2,3,4,5]
result3 = nums.reduce(0) do |sum, num|
  p "#{sum} - #{num}"
  p "ACCUR: #{sum}"
  sum + num
end

p result3





# def reduce (initial, &block)
#   block.call(initialize, {a, b})
# end


