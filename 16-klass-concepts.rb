
# Use $ for creating global variables
$everywhere = "I am global"

class ActiveRecord 
  # @@ for creating class level variables
  @@count = 1
  attr_accessor :name, :record
  p self
  puts "Hmm.. Is it strange..."


  # Kind of static method
  def self.all 
    p self 
    puts "Find all record...."
  end

  def self.count 
    @@count
  end

  # Class variable setter
  def self.count=(value) 
    @@count = value
  end

  def initialize(name)
    @record = ["users","posts"]
    @name = name
    @@count = @@count + 1
  end

  
  def save 
    @record << self.name
    puts $everywhere
    puts "save instance method"
  end
end

class User < ActiveRecord 

end

class Post < ActiveRecord 

end



ActiveRecord.all
ar = ActiveRecord.new("comments")
ar.save 
p ar.record

p ActiveRecord.count

p User.count

post = Post.new("posts")
p Post.count

Post.count = 100
p ActiveRecord.count

