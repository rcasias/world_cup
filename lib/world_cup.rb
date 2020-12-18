class WorldCup
  attr_reader :year,
              :country

  def initialize(year, country)
    @year = year
    @country = country
  end

  def teams
    @country
  end

  def active_players_by_position(position)
  active_players_by_position_array = []
    @country.each do |country|
      if country.players_by_position(position) == position
        active_players_by_position << players_by_position
      end
    end
    active_players_by_position
  end

end
