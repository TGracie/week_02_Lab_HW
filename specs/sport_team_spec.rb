require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team.rb')

class TestSportTeam < MiniTest::Test


def test_get_team_name
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  assert_equal("Twickenham Twiddlers", sportsball.team)
end

def test_get_players
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  assert_equal(["George Bovril", "Frank Lampshade"], sportsball.players)
end

def test_get_coach
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  assert_equal("Peter Marbles", sportsball.coach)
end

def test_update_coach
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  sportsball.coach = "Barry Castors"
  assert_equal("Barry Castors", sportsball.coach)
end

def test_add_new_player
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  sportsball.players << "Billy Footstool"
  assert_equal(["George Bovril", "Frank Lampshade", "Billy Footstool"], sportsball.players)
end

def test_player_exists
  sportsball = SportTeam.new("Peter Marbles", "Twickenham Twiddlers", ["George Bovril", "Frank Lampshade"], 69)
  assert_equal(true, sportsball.player_exists("George Bovril"))

end

# def test_update_points
# end

end
