# enumerables
# each
# map
# reduce
# select

require_relative "./my-enumerable"

class Store 
  # include Enumerable
  include MyEnumerable

  attr_reader :snacks 

  def initialize 
    # snacks is internal data structure
    @snacks = []   # This data structure/type can be anything
  end

  def add_snack(snack)
    @snacks << snack # push to array
  end

  # kind of inteface (each)
  def each 
    snacks.each do |snack|
      yield snack
    end
  end

end

mumbai = Store.new 
mumbai.add_snack("Vada Pav")
mumbai.add_snack("Samosa")
mumbai.add_snack("Pepsi")

p mumbai

p mumbai.first

found = mumbai.find do |e|
  e == "Pepsi"
end

p "Found: #{found}"

p mumbai.map { |snack| snack.upcase}
p mumbai.select { |snack| snack.downcase.include?("v")}
all=mumbai.find_all do |e|












