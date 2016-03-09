require_relative 'spec_helper'

describe Footman do 


    before :each do
      @footman = Footman.new
    end

    describe "#dmg_agaisnt_barracks" do
      it "Should do half damage agaisnt Barracks" do
        barr = Barracks.new
        @footman.dmg_agaisnt_barracks(barr)
        expect(barr.health_points).to eq(495)
      end
    end
end
