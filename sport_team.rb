class SportTeam


  attr_accessor :coach, :points, :players
  attr_reader :team

def initialize(input_coach, input_team, input_players, input_points)
  @coach = input_coach
  @team = input_team
  @players = input_players
  @points = input_points
end

end
