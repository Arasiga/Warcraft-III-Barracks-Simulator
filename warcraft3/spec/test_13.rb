require_relative 'spec_helper'

describe Unit do 

  before :each do
    @unit1 = Footman.new
    @unit2 = Footman.new
  end

  describe "#attack!" do
    it "Should not be able to attack a dead unit" do
      expect(@unit2).to receive(:health_points).and_return(0)
      expect(@unit1.attack!(@unit2)).to eq("You cannot attack a dead unit!")
    end

    it "Should not be able to attack if you are a dead unit" do
      expect(@unit2).to receive(:health_points).and_return(0)
      expect(@unit2.attack!(@unit1)).to be_falsy
    end
   end
  
end