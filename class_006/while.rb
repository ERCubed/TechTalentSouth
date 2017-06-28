students = []

name = gets.chomp

while name != "Jacob"
	students.push(name)
	name = gets.chomp
end
students.push(name)

puts "The students are" 
puts students