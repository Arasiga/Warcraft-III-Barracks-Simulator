#require 'footman'

class Unit 

  attr_reader :health_points, :ap

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end

  def dead?
    health_points <= 0
  end

  def damage(ap)
    @health_points -= ap
  end

  def attack!(enemy)
    if enemy.dead? == true
      "You cannot attack a dead unit!"
    else
      enemy.damage(@attack_power) unless dead? == true
    end
  end

end