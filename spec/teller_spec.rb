require 'spec_helper'

describe Teller do
	
	it "should draw three cards by default" do
		Deck.should_receive(:draw).with(3)
		Teller.do_reading()
	end
	it "should shuffle the Deck prior to the reading"
	it "should be possible to restrict a draw to the Major Arcana"
end