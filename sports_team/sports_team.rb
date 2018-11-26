class SportsTeam

attr_reader :team_name, :players
attr_accessor :coach, :points

def initialize(team_name, players, coach)
@team_name = team_name
@players = players
@coach = coach
@points = 0
end


# def get_team_name
#   return @team_name
# end
#
# def get_players
#   return @players
# end
#
# def get_coach
#   return @coach
# end
#
# def set_coach(coach)
#   @coach = coach
# end

def add_player(player)
  @players << player
end

def find_player(player)
  @players.include?(player)
end

def update_points(result)
  points_added = {
    'win' => 3,
    'lose' => 0,
    'draw' => 1
  }
  @points += points_added[result]
end

end
