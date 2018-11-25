# Generic object
obj = Object.new

# Teaching a method to our obj object
def obj.talk
  puts 'Object > talk'
end

obj.talk

# Generic object methods
generic_object = Object.new
p generic_object.methods.sort

puts "object_id: #{obj.object_id}"
puts "respond_to?('walk'): #{obj.respond_to?('walk')}"
puts "respond_to?('nil?'): #{obj.respond_to?('nil?')}"

# Execute object method with "send"
puts "send(nil?): #{obj.send('nil?')}"

def execute_method(obj, method)
  if obj.respond_to?(method)
    puts obj.send(method)
  else
    puts "I don't know that method"
  end
end

execute_method(generic_object, 'walk')
execute_method(generic_object, 'object_id')

# References

first_string = 'Hello'
second_string = first_string
puts "first_string id: #{first_string.object_id}"
puts "second_string id: #{second_string.object_id}"

number_a = 100
number_b = number_a
puts "#{number_a.object_id} / #{number_b.object_id}"

# References as arguments
welcome_message = 'Hello'
def add_excitement(str)
  str.concat('!')
end
add_excitement(welcome_message)
puts welcome_message

# Duplicating objects
secret_password = 'password'
password_dup = secret_password.dup

puts "ids: #{secret_password.object_id} / #{password_dup.object_id}"

# Freezing/protecting objects
secret_password.freeze

def encrypt_password(str)
  str.concat('_encrypted')
end

begin
  encrypt_password(secret_password)
rescue FrozenError => e
  puts "rescue for FrozenError: #{e}"
end

# Duplicating a frozen object
password_dup = secret_password.dup
puts "Is 'dup' of frozen string frozen too?: #{password_dup.frozen?}"

# Clone
# Similar to dup, except cloning also clones the 'frozen' status
name = 'Cinthya'
first_name = name.clone
puts "Name and first name: #{name} / #{first_name}"

name.freeze
name_clone = name.clone
puts "Is 'clone' of frozen string frozen too?: #{name_clone.frozen?}"
