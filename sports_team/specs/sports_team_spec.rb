require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test


def test_get_team_name
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.get_team_name
  assert_equal('CodeClan Utd', result)
end

def test_get_players
  team = SportsTeam.new('CodeClan Utd',['Mark','Lionel Messi'],'Michael')
  result = team.get_players
  assert_equal(['Mark','Lionel Messi'], result)
end

def test_get_coach
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.get_coach
  assert_equal('Michael', result)
end

def test_set_coach
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.set_coach('Carlo Ancelotti')
  assert_equal('Carlo Ancelotti', result)
end


end
