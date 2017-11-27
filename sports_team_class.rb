class SportsTeam

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


  def new_player(name)
    @players.push(name)
  end


  def check_player(name)
    for player in players
      return true if player == name.downcase
    end
    return false
  end

end
