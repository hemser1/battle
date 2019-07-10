require './app'

class Player
  attr_reader :name, :hp_points

  def initialize(name)
    @name = name
    @hp_points = 60
  end

  def receive_damage
    @hp_points -= 10
  end
end
