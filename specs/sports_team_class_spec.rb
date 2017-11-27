require('minitest/autorun')
require_relative('../sports_team_class.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    team_name = "blue petals"
    players = ["jane dee", "dave glu", "alex roe"]
    coach = "coach liu"
    @the_team = SportsTeam.new(team_name, players, coach)
  end


  def test_get_team_name
    assert_equal("blue petals", @the_team.team_name)
  end


  def test_get_players
    players = ["jane dee", "dave glu", "alex roe"]
    assert_equal(players, @the_team.players)
  end


  def test_get_coach
    assert_equal("coach liu", @the_team.coach)
  end


  def test_set_coach
    @the_team.coach = "judge julie"
    assert_equal("judge julie", @the_team.coach)
  end


  # Create a method that adds a new player to the player's array.
  def test_new_player
    @the_team.new_player("ringa kia")
    assert_equal(
      ["jane dee", "dave glu", "alex roe", "ringa kia"],
      @the_team.players
    )
  end


  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.
  def test_check_player
    player_one = "Alex Roe"
    player_two = "Kilo Wrex"
    player_one_exists = @the_team.check_player(player_one)
    player_two_exists = @the_team.check_player(player_two)
    assert_equal(true, player_one_exists)
    assert_equal(false, player_two_exists)
  end


  def test_check_points
    assert_equal(0, @the_team.points)
  end

  
end




# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
