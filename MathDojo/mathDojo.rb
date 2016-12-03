class MathDojo
  attr_accessor :result

  def initialize
    @result=0
  end

  def add (x,*y) 
    @result+=x
    for item in y   
      @result+=item
    end  
      self
  end

  def subtract(x,*y)
    @result-=x
    for item in y   
      @result-=item
    end  
      self
  end
end

puts MathDojo.new.add(2).add(2, 5).result
puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
