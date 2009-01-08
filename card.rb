
class Card
	
	attr_reader :name, :inverted
	
	def invert
		@inverted = true
		return self
	end
	
	def initialize(name, meaning, inverted_meaning)
		@name = name
		@inverted = false
	end
	
	def to_s
		"#{@name}"
	end
end


module MajorArcana
	def self.cards
		[Card.new("Death", 'Change', 'Status'),
		Card.new("The Fool", "Wisdom", "Foolishness"),
		Card.new("The Tower", "", ""),
		Card.new("The Emperor", "", ""),
		Card.new("The Sun", "", "")]
	end
end