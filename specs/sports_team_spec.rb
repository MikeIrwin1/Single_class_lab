require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test


  def test_team_name
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Eyebrows", new_team.name)
  end

  def test_team_players
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal(['Tom', 'Bob','Sarah'], new_team.players)
  end

  def test_team_coach
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Coach", new_team.coach)
  end

  def test_set_coach_name
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    assert_equal("Jeff", new_team.coach=("Jeff"))
  end

  def test_add_player
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    new_team.add_player('Tony')
    assert_equal(['Tom', 'Bob','Sarah','Tony'],new_team.players)
  end

  def test_check_player_name
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    check = new_team.check_player_name('Tom')
    assert_equal(true, check)
  end

  def test_win
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    new_team.check_win('win')
    assert_equal(100, new_team.points)
  end

  def test_lose
    new_team = Team.new("Eyebrows", ['Tom', 'Bob','Sarah'], "Coach")
    new_team.check_win('lose')
    assert_equal(0, new_team.points)

  end

end
