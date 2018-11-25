# Methods


# Using * as param
def sum(*n)
  puts "*n is a #{n.class}"
  puts n.reduce(:+)
end

sum(1, 2)

# Using * as a param, when having others after it
# Ruby will try to fill in the non * params first, then assign the rest to the * as an array
# this means * might end up as an empty array
def family(mom, dad, *kids, granpa, granma)
  puts "mom: #{mom}"
  puts "dad: #{dad}"
  puts "kids: #{kids}"
  puts "granpa: #{granpa}"
  puts "granma: #{granma}"
end

family('Teresa', 'Andres', 'Cinthya', 'Fico', 'Motta', 'Faustino', "Francisca")
