require_relative 'spec_helper'
require 'pry'

describe Unit do 

  before :each do
    @footman = Footman.new
    @peasant = Peasant.new
  end

  describe "#dead?" do
    it "Should return true if unit has 0 or under 0 health" do
      expect(@footman).to receive(:health_points).and_return(0)
      #binding.pry
      expect(@footman.dead?).to be_truthy
    end

    it "Should return true if unit has 0 or under 0 health" do
      expect(@peasant).to receive(:health_points).and_return(0)
      #binding.pry
      expect(@peasant.dead?).to be_truthy
    end

  end
end


