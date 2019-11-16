require 'pry'


def game_hash
  hash_stats = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
        }, {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
        }, {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
        }, {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
        }, {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
        }]
      },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
        }, {
        :player_name => "Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10
        }, {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
        }, {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
        }, {
        :player_name => "Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12
        }]
      }
    }
  return hash_stats
end 

def num_points_scored(player)
  hash_look = game_hash
  inner_hash_home = hash_look[:home][:players]
  inner_hash_away = hash_look[:away][:players]
  
  i = 0 
  while i < inner_hash_home.length do 
    if inner_hash_home[i][:player_name] == player
      return inner_hash_home[i][:points]
    end
    i += 1
  end
  
  k = 0 
  while k < inner_hash_away.length do 
    if inner_hash_away[k][:player_name] == player
      return inner_hash_away[k][:points]
    end
    k += 1
  end
end

def shoe_size(player)
  hash_look = game_hash
  inner_hash_home = hash_look[:home][:players]
  inner_hash_away = hash_look[:away][:players]
  
  i = 0 
  while i < inner_hash_home.length do 
    if inner_hash_home[i][:player_name] == player
      return inner_hash_home[i][:shoe]
    end
    i += 1
  end
  
  k = 0 
  while k < inner_hash_away.length do 
    if inner_hash_away[k][:player_name] == player
      return inner_hash_away[k][:shoe]
    end
    k += 1
  end
end

def team_colors(team)
  hash_look = game_hash
  array = []
  if hash_look[:home][:team_name] == team 
    array = hash_look[:home][:colors]
  elsif hash_look[:away][:team_name] == team 
    array = hash_look[:away][:colors]
  end
  return array
end 

def team_names
  teams = [game_hash[:home][:team_name],  game_hash[:away][:team_name]]
  return teams
end

















