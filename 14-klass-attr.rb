class Gadget 
  # attr_reader will only create getter
  attr_reader :production_no 

  # attr_writer will only create setter
  
  # attr_accessor: will create both getter and setter
  attr_accessor :gadget_type

  # Like a Constructors
  def initialize 
    #instance variables @ -> represents intance vars
    @gadget_type = "Electronics"
    @production_no =  rand(1..1000)
  end

  # Overriding to_s method
  def to_s 
    "Gadget #{@production_no} of type #{@gadget_type}"
  end
end

phone = Gadget.new 
p phone.to_s 

laptop = Gadget.new 
p laptop.to_s

p laptop.gadget_type
p laptop.production_no

laptop.gadget_type = "Laptop"

p laptop

