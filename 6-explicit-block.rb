def hug (message, config, &block)
  puts message, config
  # p block
  puts "{"
  yield "hello" if block_given?
  # block.call #if block_given?
  puts "}"
end

hug "meet me today for dinner", "food studio" 
# do 
#   puts "Sure, welcome!"
# end