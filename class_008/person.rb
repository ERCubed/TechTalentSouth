class Person

	def initialize(name, age)
		@name = name
		@age = age
	end

	def name 
		@name
	end

	def change_name(name)

	def age
		@age.to_i
	end

	def baller
		"#{@name} is a Baller!"
	end

	def birthday
		@age = @age.to_i + 1
	end


end
