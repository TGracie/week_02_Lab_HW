require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team.rb')

class TestSportTeam < MiniTest::Test


def test_get_team_name
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  assert_equal("Twickenham Twiddlers", sportsball.team)
end

# def test_get_players
# end
#
# def test_get_coach
# end
#
# def test_update_coach
# end
#
# def test_add_new_player
# end
#
# def test_player_exists
# end
#
# def test_update_points
# end

end
