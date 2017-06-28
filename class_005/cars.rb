cars = ["chevy", "ford", "dodge", "honda"]

cars.each_index { |index|
	puts index.to_s + ": " + cars[index]
	puts '--------'
}

cars.each { |car| 
	puts car
	puts '--------'
}