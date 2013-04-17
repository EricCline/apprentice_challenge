class Calculator
  def initialize(options = {})
    @base = options[:base] ||10
	@input = 0
	@add_val = 0
	@subtract_val = 0
  end
		
  def base
	@base
  end
	
  def clear
	@input, @add_val, @subtract_val = 0,0,0
	self
  end
	
  def input(x)
	clear
	@input = x
	self
  end

  def add(x)
	@add_val = x
	self
  end
	
  def subtract(x)
	@subtract_val = x
	self
  end
	
  def equal
	@input = @input + @add_val - @subtract_val
		
	if @base != 10
	  digits = []
	  num = @input
	  while num > 0
		digits.unshift( num % @base )
		num /= @base
		end
	  @input = Integer(digits.join)
	end
		
	@input		
  end	
end