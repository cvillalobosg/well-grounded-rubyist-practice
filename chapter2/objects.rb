# Generic object
obj = Object.new

# Teaching a method to our obj object
def obj.talk
  puts 'Object > talk'
end

obj.talk

# Native object methods
native_object = Object.new
p native_object.methods.sort

puts "object_id: #{obj.object_id}"
puts "respond_to?('walk'): #{obj.respond_to?('walk')}"
puts "respond_to?('nil?'): #{obj.respond_to?('nil?')}"
