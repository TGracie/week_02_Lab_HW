class SportTeam


  attr_accessor :coach, :points, :players
  attr_reader :team

def initialize(input_coach, input_team, input_players, result)
  @coach = input_coach
  @team = input_team
  @players = input_players
  @points = result
  @total_points = 0
end



def player_exists(player)
  for person in @players
    if person == player
      return true
    else
      return false
    end
  end
end

def update_points(result)
  if result == "Win"
    @total_points += 5
  end
end

end
