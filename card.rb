
class Card
	
	attr_reader :name, :inverted, :meaning
	
	def invert
		@inverted = true
		return self
	end
	
	def initialize(name, meaning, reversed_meaning)
		@name = name
		@inverted = false
		@meaning = meaning
	end
	
	def to_s
		"#{@name}"
	end
end


module MajorArcana
	def self.cards
		[Card.new("Death", 'Change (disruptive or difficult)', 'Statis'),
		Card.new("The Fool", "Wisdom", "Foolishness"),
		Card.new("The Tower", "Surprise, shock, revelation", "Inevitable, obvious"),
		Card.new("The Emperor", "Wisdom, authority", "Impulse, foolhardy, empty authority"),
		Card.new("The Sun", "Insight, optimism, revelation", "Truth obscured")]
	end
end