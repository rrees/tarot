require 'deck'
class Teller
	
	@@default_draw = 3
	
	def self.do_reading
		cards = Deck.draw(@@default_draw)
	end
end