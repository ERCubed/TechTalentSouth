# Create a method that converts an Array into a Hash
# (indexes become keys)

my_array = ['first', '2nd', 3, 'last one']

def array_to_hash (arr)
	my_hash = {}
	arr.each_with_index do |value, index|
		my_hash.store(index, value)
	end
	return my_hash
end

my_new_hash = array_to_hash(my_array)

puts my_new_hash