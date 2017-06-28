# Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.

cost = gets.chomp
cost = cost.to_f
tip = "%.2f"  % (cost * 0.18)
total = cost + tip.to_f
puts "You should tip #{tip} for a total of #{"%.2f" % total}"
