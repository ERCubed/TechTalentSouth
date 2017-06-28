# puts "Hello Universe"

puts "Pleae enter an animal: "
animal = gets.chomp.downcase	# Always lowercase the User's input to match my conditions

puts "You entered #{animal}"

if animal == "dog"
	puts "Woof!"
elsif animal == "cat"
	puts "Meow"
else 
	puts "I don't know that animal noise"
end
