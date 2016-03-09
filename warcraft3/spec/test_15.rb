require_relative 'spec_helper'

describe SiegeEngine do
   
  before :each do
    @siege = SiegeEngine.new
    @barracks = Barracks.new
    @footman = Footman.new
    @siege2 = SiegeEngine.new
  end

  describe "#dmg_agaisnt_barracks" do 

    it "Should do twice the amount of dmg to Barracks" do
      @siege.dmg_agaisnt_barracks(@barracks)
      expect(@barracks.health_points).to eq(400)
    end

    it "Should do normal damage to another siege" do
      @siege.dmg_agaisnt_barracks(@siege2)
      expect(@siege2.health_points).to eq(350)
    end

    it "Should not attack anything other than a barrack or a siege" do
      @siege.dmg_agaisnt_barracks(@footman)
      expect(@footman.health_points).to eq(60)
    end
    
  end

end