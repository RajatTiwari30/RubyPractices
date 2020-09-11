class ActiveRecord
  # p self
  # static kind of variable
  def self.table_name
    @table_name
  end

  # Alternate ways to create class methods
  class << self 
    def all 
      puts "Fetch all records..."
    end
    def find_by (criteria, value)
      puts "Find by #{criteria} - #{value}"
    end
  end

  def get_table_name 
    # p self
    # p self.class

    # Here # self will instance object
    # From instance grab the class and then invoke the method
    self.class.table_name

  end
end

class User < ActiveRecord 
  # self => User
  # p self 

  # class instance variables
  @table_name = "users"
end

class Address < ActiveRecord 
  @table_name = "address"
end

puts User.new.get_table_name  # users
puts Address.new.get_table_name  # address

# 3.times do  
#   p User.new.get_table_name 
#   p Address.new.get_table_name
# end

#puts User.table_name

puts ActiveRecord.all 
puts ActiveRecord.find_by("city", "mumbai")






