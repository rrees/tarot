
class Card
	
	attr_reader :name, :inverted, :meaning,:reversed_meaning, :description
	
	def invert
		@inverted = true
		return self
	end
	
	def initialize(name, meaning, reversed_meaning, description = "")
		@name = name
		@inverted = false
		@meaning = meaning
	  	@reversed_meaning = reversed_meaning
	  	@description = description
	end

	def meaning
	  if(@inverted)
		return @reversed_meaning
	  end

	  @meaning
	end
	
	def to_s
		"#{@name}"
	end
end


module MajorArcana
  DEATH = Card.new("Death", 'Change (disruptive or difficult)', 'Statis', 'The Grim Reaper carrying a sycthe')
  
	def self.cards
		[DEATH,
		Card.new("The Fool", "Wisdom", "Foolishness"),
		Card.new("The Tower", "Surprise, shock, revelation", "Inevitable, obvious"),
		Card.new("The Emperor", "Wisdom, authority", "Impulse, foolhardy, empty authority"),
		Card.new("The Sun", "Insight, optimism, revelation", "Truth obscured")]
	end
end