# Class methods used for behavior that relates to the class, and not to an specific object
class Character

  attr_accessor :name, :level

  def initialize(name, level)
    @name = name
    @level = level
  end

  def Character.highest_level(*chars)
    chars.max_by { |p| p.level }.name
  end
end

orc = Character.new('Orc', 10)
elf = Character.new('Elf', 25)

puts Character.highest_level(orc, elf)

# Another notation
puts Character::highest_level(orc, elf)
