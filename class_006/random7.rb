
num = rand(10)
while num != 7
	puts num
	num = rand(10)
end
puts num


random_num = rand(10)+1
puts "Guess my number from 1 to 10"
guess = gets.chomp.to_i
while random_num != guess
	puts "Nope, try again!"
	guess = gets.chomp.to_i
end
puts "You got it"
