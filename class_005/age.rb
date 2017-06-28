# Write a program that accepts your age. Convert your age to how old you are in seconds. 
# Convert your age to how old you would be on the 8 different planets 
# (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.

# For Reference: 
# https://astronomy.wonderhowto.com/how-to/old-are-you-mars-and-venus-learn-convert-earth-years-across-our-solar-system-0132937/

# All conversions here are in earth days
astro_days = [
	{:planet => "Mercury", :day_length => 58.65, :year_length => 87.97},
	{:planet => "Venus", :day_length => 243.01, :year_length => 224.7},
	{:planet => "Earth", :day_length => 1.00, :year_length => 365.25},
	{:planet => "Mars", :day_length => 1.03, :year_length => 686.98},
	{:planet => "Jupiter", :day_length => 0.41, :year_length => 4328.9},
	{:planet => "Saturn", :day_length => 0.45, :year_length => 10752.9},
	{:planet => "Uranus", :day_length => 0.72, :year_length => 30663.65 },
	{:planet => "Neptune", :day_length => 0.67, :year_length => 60148.35},
	{:planet => "Pluto", :day_length => 6.39, :year_length => 90406.85}	
]

puts "How old are you?"
age = gets.chomp
age = age.to_i

age_seconds = age * 365.25 * 24 * 60 * 60
puts "You are #{age_seconds} old."

age_days = age * 365.25		# Leap Year calculations!

puts "\nYour corresponding age on each planet is: \n"
astro_days.each { |astro| 
	years = age_days / astro[:year_length]
	# puts astro
	puts "#{astro[:planet]}: #{'%.2f' % years} Years Old"
} 
