# module Enumerable
# end

module MyEnumerable
  def map (&block)
    result = []   # local variable 
    each do |ele|
      result << block.call(ele)
    end
    result
  end

  def find (&block)
    result = nil
    found = false 

    each do |ele|
      if block.call(ele) 
        result = ele 
        found = true
        break
      end
    end
    found ? result : nil
  end

  def first 
    found = nil 
    each do |ele|
      found = ele
      break
    end
    found
  end

  def select(&block)
  end

  def find_all (&block)
    found_all = []   
    each do |ele|
      found_all << block.call(ele)
    end
    found_all
  end
  def sort(num1,num2)
    sorted =[]
    each do |index|
    if num1<num2
        num1,num2 = num2,num1
        sorted << num1+num2
    end
    end
    sorted
    end
    def max
      max_element=first 
      each do |ele|
        if ele>max_element
          max_element=ele
        end
      end
      max_element
    end
    def min
      min_element=first 
      each do |ele|
        if ele<min_element
          min_element=ele
        end
      end
      min_element
    end
  #.....
end