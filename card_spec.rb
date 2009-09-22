require 'spec_helper'

describe Card do
	
	before(:all) do
		@card = MajorArcana::DEATH
	  	@inverted_card = MajorArcana::DEATH.clone.invert
	end
	
	it "should have a name" do
		@card.name.should == "Death"
	end
	it "should have a description" do
	  @card.description.should == "The Grim Reaper carrying a sycthe"
	end
	it "should initially not be inverted" do
		@card.inverted.should == false
	end
	it "should have be invertable" do
		a_card = Card.new("", "", "")
		a_card.invert.inverted.should == true
	end

	it "should have an inverted meaning" do
		@inverted_card.meaning.should == "Statis"
	end
	
	it "should have a meaning" do
		@card.meaning.should match("^Change")
	end
end