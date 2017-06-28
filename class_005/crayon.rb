# Write a program that asks for your favorite Crayola crayon and then takes the string and yells it back in all caps and in reverse.

puts "What's your favorite crayon color?"
crayon = gets.chomp

puts "Did you say #{crayon.upcase}?"
puts "Let me repeat it 'back' to you, #{crayon.upcase.reverse}"

