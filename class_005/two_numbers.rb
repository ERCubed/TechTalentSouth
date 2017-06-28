# Write a program that takes two numbers from the user and shows the sum, difference, product and quotient of the two numbers.

puts "Input first number: " 
num1 = gets.chomp

puts "Input second number: "
num2 = gets.chomp

# Force the input to Integer 
n1 = num1.to_i
n2 = num2.to_i

puts "Sum: #{n1+n2}"
puts "Difference: #{n1-n2}"
puts "Product: #{n1*n2}"
puts "Quotient: #{n1/n2}"

puts "Quotient (as a Float): #{n1.to_f/n2.to_f}"
