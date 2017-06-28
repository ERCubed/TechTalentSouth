def lb_to_kg(lbs)
	kg = lbs/0.45
	return "%.2f" % kg	
end

puts "what weight do you want to convert?"
weight = gets.chomp.to_i

puts "#{weight} pounds is #{lb_to_kg(weight)} kilograms"
