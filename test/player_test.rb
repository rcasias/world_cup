require 'minitest/autorun'
require './lib/player'

class PlayerTest < Minitest::Test

  def test_player_exists
    player = Player.new({name: "Luka Modric", position: "midfielder"})

    assert_instance_of Player, player
  end

  def test_name
    review = Review.new({name: "Aral Nuraduum", score: "4.5"})

    assert_equal "Aral", player.name
    assert_equal "Nuraduum", player
  end

end
