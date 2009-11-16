require 'card'

class Deck
	def self.draw(number_of_cards = 1)
		cards = []
		cards.concat MajorArcana::cards
		cards.sort{|x,y| rand(3) - 1}.slice(0, number_of_cards)
	end
end