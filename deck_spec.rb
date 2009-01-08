require 'deck'

describe Deck do
	it "should have a fixed number of cards"
	it "should have a Major arcana subset"
	it "should have the right number of Major arcana cards" do
		MajorArcana.cards.length.should == 5
	end
	it "should draw one card by default" do
		drawn_cards = Deck.draw()
		drawn_cards.size.should == 1
	end
	it "should draw as many cards as requested" do
		hand_size = 5
		drawn_cards = Deck.draw(hand_size)
		drawn_cards.should be_kind_of(Array)
		drawn_cards.size.should == hand_size
	end
	it "should draw cards when asked" do
		drawn_cards = Deck.draw()
		drawn_cards.each{ |card| card.should be_kind_of(Card)}
	end
end