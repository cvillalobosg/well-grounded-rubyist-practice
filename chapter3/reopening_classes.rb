# A class can be reopened and methods added

class Pokemon
  def attack
    puts 'attack!'
  end

  def defend
    puts 'defend!'
  end
end


class Pokemon
  def skip
    puts 'skips turn...'
  end
end


pikachu = Pokemon.new
pikachu.attack
pikachu.skip
