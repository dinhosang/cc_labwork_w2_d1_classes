require('minitest/autorun')
require_relative('../sports_team_class.rb')

class TestSportsTeam < MiniTest::Test

  def setup
    team_name = "Blue Petals"
    players = ["Jane Dee", "Dave Glu", "Alex Roe"]
    coach = "Coach Liu"
    @the_team = SportsTeam.new(team_name, players, coach)
  end


  def test_get_team_name
    assert_equal("Blue Petals", @the_team.team_name)
  end


  def test_get_players
    players = ["Jane Dee", "Dave Glu", "Alex Roe"]
    assert_equal(players, @the_team.players)
  end


  def test_get_coach
    assert_equal("Coach Liu", @the_team.coach)
  end


  def test_set_coach
    @the_team.coach = "Judge Julie"
    assert_equal("Judge Julie", @the_team.coach)
  end


end


# Create a method that adds a new player to the player's array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.
