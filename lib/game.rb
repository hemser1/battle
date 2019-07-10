require_relative 'player'

class Game
attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def attack(players)
    players.receive_damage
  end

  def switching_turn
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(current_turn)
    @players.select { |player| player != current_turn }.first
  end
end
