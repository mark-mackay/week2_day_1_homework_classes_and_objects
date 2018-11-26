require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class TestSportsTeam < MiniTest::Test


def test_get_team_name
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.team_name
  assert_equal('CodeClan Utd', result)
end

def test_get_players
  team = SportsTeam.new('CodeClan Utd',['Mark','Lionel Messi'],'Michael')
  result = team.players
  assert_equal(['Mark','Lionel Messi'], result)
end

def test_get_coach
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.coach
  assert_equal('Michael', result)
end

def test_set_coach
  team = SportsTeam.new('CodeClan Utd',['Mark'],'Michael')
  result = team.coach='Carlo Ancelotti'
  assert_equal('Carlo Ancelotti', result)
end

def test_add_player__Roberto_Baggio
  team = SportsTeam.new('CodeClan Utd',['Mark', 'Lionel Messi'],'Michael')
  team.add_player('Roberto Baggio')
  result = team.players.include?('Roberto Baggio')
  assert_equal(result, true)
end

def test_add_player__Roberto_Baggio
  team = SportsTeam.new('CodeClan Utd',['Mark', 'Lionel Messi'],'Michael')
  team.add_player('Roberto Baggio')
  result = team.players.include?('Roberto Baggio')
  assert_equal(result, true)
end

def test_find_player__Lionel_Messi__True
  team = SportsTeam.new('CodeClan Utd',['Mark', 'Lionel Messi'],'Michael')
  result = team.find_player('Lionel Messi')
  assert_equal(result, true)
end

def test_find_player__Fred_Flintstone__False
  team = SportsTeam.new('CodeClan Utd',['Mark', 'Lionel Messi'],'Michael')
  result = team.find_player('Fred Flintstone')
  assert_equal(result, false)
end








end
