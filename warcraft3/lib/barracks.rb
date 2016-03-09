require 'footman'
require 'pry'
require 'peasant'
require 'siege'

class Barracks

  attr_accessor :gold, :food, :health_points, :lumber

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  def train_siegeEngine
    if can_train_siegeEngine? == false
      nil
    else
      @gold -= 200
      @food -= 3
      @lumber -= 60
      SiegeEngine.new
    end
  end

  def can_train_siegeEngine?
    if (gold < 200) || (food < 3) || (lumber < 60)
      false
    else 
      true
    end
  end

  def train_peasant
    if can_train_peasant? == false
      nil
    else
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def can_train_peasant?
    if (gold < 90) || (food < 5)
      false
    else 
      true
    end
  end

  def train_footman
     if can_train_footman? == false
      nil
    else
      @gold -= 135 
      @food -= 2
      Footman.new
    end
  end

  def can_train_footman?
    if (gold < 135) || (food < 2)
      false
    else
      true
    end
  end
end
