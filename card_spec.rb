require 'spec_helper'

describe Card do
	
	before(:all) do
		@card = Card.new("Death", "Change", "Statis")
	end
	
	it "should have a name" do
		@card.name.should == "Death"
	end
	it "should have a description"
	it "should initially not be inverted" do
		@card.inverted.should == false
	end
	it "should have be invertable" do
		a_card = Card.new("", "", "")
		a_card.invert.inverted.should == true
	end
	it "should have an inverted meaning"
	
	it "should have a meaning" do
		@card.meaning.should == "Change"
	end
end