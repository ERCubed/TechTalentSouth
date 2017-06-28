# Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.

puts "What's your mood today?" 
mood = gets.chomp

puts "Your mood is #{mood.length} characters long"

catmood = mood.prepend("meow") 

puts "A cat might say you were feeling #{catmood}"

