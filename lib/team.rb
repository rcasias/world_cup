class Team
  attr_reader :country,
              :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    @eliminated
  end

  def eliminated
    @eliminated = true
  end

  def add_player(player)
    @players << player
  end

  def players_by_position(position)
    position_array = []
    @players.each do |player|
      if player.players_by_position == position
        position_array << player
      end
    end
    position_array
  end


end
