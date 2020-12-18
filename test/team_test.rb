require 'minitest/autorun'
require './lib/player'
require './lib/team'

class TeamTest < Minitest::Test

def test_team_is_not_elimininated
  team = Team.new("France")

  assert_equal team.eliminated?, false
end

def test_team_eleimated?
  team = Team.new("France")
  team.eliminated

  assert_equal team.eliminated, true
end

def test_team_array_exists
  team = Team.new("France")

  assert_equal team.players, []
end

def test_add_player
  team = Team.new("France")
  mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})

   assert_equal [mbappe], team.add_player(mbappe)
end

def test_players_by_position
  team = Team.new("France")
  mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
  team.add_player(mbappe)

  assert_equal [mbappe], team.players_by_position("forward")
end

end
