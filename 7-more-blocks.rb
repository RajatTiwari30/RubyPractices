# Passing proc and block together

def repeat(x, yproc, &b) 
  puts x 
  puts yproc
  yproc.call
  b.call if block_given?
end

# repeat 5, 10 do 
#   puts "I am in the default block"
# end

repeat 5, proc { puts "I am a custom proc" } do 
  puts "I am in the default block"
end