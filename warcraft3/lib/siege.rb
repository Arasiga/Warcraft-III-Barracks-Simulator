require 'unit'

class SiegeEngine < Unit
  attr_accessor :health_points, :attack_power

  def initialize
    @attack_power = 50
    @health_points = 400
  end


  def dmg_agaisnt_barracks(enemy)
    if enemy.instance_of?(SiegeEngine)
      enemy.health_points -= @attack_power
    else
      enemy.health_points -= (@attack_power*2) unless !(enemy.instance_of?(Barracks))
    end 
  end
end



