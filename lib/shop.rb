class Shop

	attr_reader :name
	attr_accessor :inventory, :till_balance

	def initialize(name)
		@name = name
		@inventory = []
		@till_balance = 100
	end

	def add(item)
		inventory << item
	end

	def sell(item)
		inventory.delete(item)
		@till_balance += item.price
	end 
end


