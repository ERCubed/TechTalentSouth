
pizza = [
	{"name" => "pepperoni", "cost" => 2.00, "meat" => true},
	{"name" => "sausage", "cost" => 2.00, "meat" => true},
	{"name" => "mushroom", "cost" => 1.00, "meat" => false}
]

puts "What kind of pizza do you want?"
want = gets.chomp.split(",")

cost = 0.00

want.each { |item_wanted| 
	pizza.each { |p| 
		if p['name'] == item_wanted
			cost += p['cost']
		end
	}
}

puts "Your pizza is going to cost you $#{'%.2f' % cost} before tax and tip..."