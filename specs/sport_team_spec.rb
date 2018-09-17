require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team.rb')

class TestSportTeam < MiniTest::Test

def setup
  @sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], "Win")
end

def test_get_team_name
  sportsball = @sportsball
  assert_equal("Twickenham Twiddlers", sportsball.team)
end

def test_get_players
  sportsball = @sportsball
  assert_equal(["George Bovril", "Frank Lampshade"], sportsball.players)
end

def test_get_coach
  sportsball = @sportsball
  assert_equal("Peter Marbles", sportsball.coach)
end

def test_update_coach
  sportsball = @sportsball
  sportsball.coach = "Barry Castors"
  assert_equal("Barry Castors", sportsball.coach)
end

def test_add_new_player
  sportsball = @sportsball
  sportsball.players << "Billy Footstool"
  assert_equal(["George Bovril", "Frank Lampshade", "Billy Footstool"] , sportsball.players)
end

def test_player_exists_true
  sportsball = @sportsball
  assert_equal(true, sportsball.player_exists("George Bovril"))

end

def test_player_exists_false
  sportsball = @sportsball
  assert_equal(false, sportsball.player_exists("Garry Barnett"))

end

def test_update_points
    sportsball = @sportsball
    assert_equal(5, sportsball.update_points("Win"))
end

end
