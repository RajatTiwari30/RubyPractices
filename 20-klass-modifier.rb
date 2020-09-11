$global_var = "I am global"
class Test
  @@count = 1   # class level variable

  # public methods
  public
  def method1
    puts "In method 1"
  end

  def method2
    puts "In method 2"
    private_method1
  end

  # Private methods does not have an explicit receiver
  private 
  def private_method1 
    puts "I am a private method 1"
  end

  def private_method2
    puts "I am a private method 2"
  end

  protected 
  def protected_method1 
    puts "I am a protected method 1"
  end
end

class UnitTest < Test

  def run 
    puts "Runnning tests...."
    protected_method1
    private_method1  # private in ruby is like protected in java
  end
end

class SpecTest < Test 
  def run 
  end

  # public method
  def compare(other_object)
    #private_method1     # this works
    # p other_object.private_method1
    other_object.protected_method1
  end

  def method1 
  end

  def method2
  end

  def method3 
  end

  # Alternate way to mark private/protected
  private :method1, :method2
  protected :method3 
end

t1 = Test.new 
t1.method1 
t1.method2
# t1.protected_method1
# t1.private_method1  # will throw error


utest = UnitTest.new 
utest.run 

stest = SpecTest.new 
stest.compare(t1)

