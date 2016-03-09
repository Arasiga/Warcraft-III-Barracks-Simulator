require_relative 'spec_helper'

describe "Barracks" do 

  before :each do
    @test = Barracks.new

  end

  describe "initializer" do
    it "Should be equal to 500" do
      expect(@test.lumber).to eq(500)
    end
  end
  
end