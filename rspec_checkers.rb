require 'checkers'

describe Checkers do 
  it "should have have a positions array with 8 elements" do
    checkers = Checkers.new
    checkers.get_positions.should have(8).items
  end
  
  it "should not have a position_legality equal to null" do
    checkers = Checkers.new
    positions = checkers.get_positions
    checkers.position_legality('black', positions, 2, 2, 1, 1, 1).should_not be_nil
  
  end


end



