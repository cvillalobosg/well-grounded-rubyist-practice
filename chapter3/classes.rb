# Instance variables
# The instance variable enables individual objects to remember state.
# Instance variables work much like other variables: you assign values to them,
# and you read those values back; you can add them together, print them out, and so on.
# But instance variables have a few differences:

# Class with constructor and manual setter method
class Pokemon

  TYPES = %w[ELECTRIC BUG PSYCHIC ROCK GROUND].freeze

  # Constructor
  def initialize(name, type, max_hp)
    raise ArgumentError unless TYPES.include?(type.upcase)

    @name = name
    @type = type
    @max_hp = max_hp
  end

  # Cool setter method
  def level=(level)
    @level = level
  end

  def level
    @level
  end
end

pikachu = Pokemon.new('Pikachu', 'Electric', '200')
pikachu.level = 12
puts pikachu.level

# Access constants from outside the class
puts Pokemon::TYPES.join(' - ')
puts Math::PI
puts RUBY_VERSION


class EvolvedPokemon

  # Generates get methods with symbols
  attr_reader :name, :type, :max_hp, :level
  # Generates set method
  attr_writer :level
  # Generates get and set methods
  attr_accessor :current_hp

  # Constructor
  def initialize(name, type, max_hp)
    @name = name
    @type = type
    @max_hp = max_hp
    @current_hp = @max_hp
    @level = 1
  end

end

pikachu = Pokemon.new('Pikachu', 'Electric', '200')
pikachu.level = 12
puts pikachu.level


# Anonymous classes
AnonClass = Class.new do
  def hello
    puts 'hello!'
  end
end

my_class_object = AnonClass.new
my_class_object.hello

puts Class.superclass

# Module methods
puts Class.superclass.methods.join(' , ')
