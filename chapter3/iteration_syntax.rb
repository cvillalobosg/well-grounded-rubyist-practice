puts ["a", "b", "c"].map { |w| w.capitalize }.join
puts ["a", "b", "c"].map(&:capitalize).join