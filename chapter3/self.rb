
puts self
# puts self.methods.sort

class Movie
  def print_self
    puts self
    puts self.methods.sort
  end
end

puts Movie.new.print_self
