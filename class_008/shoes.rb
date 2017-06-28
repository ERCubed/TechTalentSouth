class Shoes

	attr_accessor :brand, :name, :color

	def initialize(brand, name, color)
		@brand = brand
		@name = name
		@color = color
	end

	def brand
		@brand
	end

	def name
		@name
	end

	def color
		@color
	end

	def change_name(name)
		@name = name
	end

end

