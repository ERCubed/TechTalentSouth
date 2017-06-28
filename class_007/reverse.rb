def reverse_it(forward)
	my_string = forward.split("")
	# count = my_string.size-1
	backwards = ""
	# until count < 0
	# 	backwards += my_string[count]
	# 	count -= 1
	# end
	my_string.size.times do
		backwards += my_string.pop
	end
	return backwards
end

puts "Give me a string to reverse"
the_string = gets.chomp

puts "The reverse of your string is #{reverse_it(the_string)}"
