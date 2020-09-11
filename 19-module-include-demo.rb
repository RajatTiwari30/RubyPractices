require_relative './modules/digest'

class Base 
end

# Mixins
class Person < Base
  include Encryption
  include HackyEncryption  # This will overite if same already loaded
  extend HackyEncryption # Will add as class method
  
  # def self.encrypt(str) 
  #   "you are hacked"
  # end

  # def self.decrypt(estr) 
  
  # end

  # def self.salt 
  #   Time.new
  # end

end

rajesh = Person.new 
p rajesh.encrypt("secret message")

p rajesh.salt

p Person.salt

