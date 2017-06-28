puts "What grade did you get?"
grade = gets.chomp.to_i

if grade >= 90 && grade <= 100
	puts "A"
elsif grade >= 80 && grade < 90
	puts "B"
elsif grade >= 70 && grade < 80
	puts "C"
elsif grade >= 60 && grade < 70
	puts "D"
elsif grade < 60
	puts "F"
else
	puts "What grade did you REALLY get?"
end