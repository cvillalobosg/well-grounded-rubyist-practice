class Building
  attr_accessor :material

  def concrete?
    @material == 'concrete'
  end
end

class House < Building
  attr_accessor :rooms

  def family_house?
    @rooms >= 3
  end

end

# Child class can use parent class' attributes and methods
future_house = House.new
future_house.rooms = 3
future_house.material = 'concrete'

puts future_house.concrete?
puts future_house.family_house?

# Who is the father?
puts House.superclass
# Who's the granpa?
puts House.superclass.superclass

# Is House a Building?
puts future_house.is_a?(Building)
# Is Building an object?
puts future_house.is_a?(Object)