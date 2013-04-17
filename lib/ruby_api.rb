class Array
  def uniquely_sorted
	self.uniq.sort
  end
end

class Fish
  attr_reader :name 
  def initialize name 
  	@name = name
  end 
  def == other_fish
  	@name == other_fish.name
  end  
  def != other_fish
  	@name != other_fish.name
  end
end