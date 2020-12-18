require 'minitest/autorun'
require './lib/player'
require './lib/world_cup'
require './lib/team'

class WorldCupTest < Minitest::Test

  def test_world_cup_exists
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])

    assert_instance_of WorldCup, world_cup
  end

  def test_world_cup_data
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])

    assert_equal 2018, world_cup.year
    assert_equal [france, croatia], world_cup.country
  end

  def test_teams_info
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])

    assert_equal [france, croatia], world_cup.teams
  end

  def test_players_by_position
    france = Team.new("France")
    croatia = Team.new("Croatia")
    world_cup = WorldCup.new(2018, [france, croatia])
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    modric = Player.new({name: "Luka Modric", position: "midfielder"})
    vida = Player.new({name: "Domagoj Vida", position: "defender"})
    france.add_player(mbappe)
    france.add_player(pogba)
    croatia.add_player(modric)
    croatia.add_player(vida)

    assert_equal [pogba, modric], world_cup.active_players_by_position("midfielder")
  end

end
