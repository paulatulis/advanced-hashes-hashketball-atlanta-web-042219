require 'pry'
def game_hash
  {:home => {
    :team_name => 'Brooklyn Nets',
    :colors => ['black', 'white'],
    :players => [
      {player_name: 'Alan Anderson', number: 0, shoe: 16, points: 22, rebounds: 12, assists: 12, steals: 3, blocks: 1, slam_dunks: 1},
      {player_name: 'Reggie Evans', number: 30, shoe: 14, points: 12, rebounds: 12, assists: 12, steals: 12, blocks: 12, slam_dunks: 7},
      {player_name: 'Brook Lopez', number: 11, shoe: 17, points: 17, rebounds: 19, assists: 10, steals: 3, blocks: 1, slam_dunks: 15},
      {player_name: 'Mason Plumlee', number: 1, shoe: 19, points: 26, rebounds: 12, assists: 6, steals: 3, blocks: 8, slam_dunks: 5},
      {player_name: 'Jason Terry', number: 31, shoe: 15, points: 19, rebounds: 2, assists: 2, steals: 4, blocks: 11, slam_dunks: 1}
      ]
    },
  :away => {
    :team_name => 'Charlotte Hornets',
    :colors => ['turquoise', 'purple'],
    :players => [
      {player_name: 'Jeff Adrien', number: 4, shoe: 18, points: 10, rebounds: 1, assists: 1, steals: 2, blocks: 7, slam_dunks: 2},
      {player_name: 'Bismak Biyombo', number: 0, shoe: 16, points: 12, rebounds: 4, assists: 7, steals: 7, blocks: 15, slam_dunks: 10},
      {player_name: 'DeSagna Diop', number: 2, shoe: 14, points: 24, rebounds: 12, assists: 12, steals: 4, blocks: 5, slam_dunks: 5},
      {player_name: 'Ben Gordon', number: 8, shoe: 15, points: 33, rebounds: 3, assists: 2, steals: 1, blocks: 1, slam_dunks: 0},
      {player_name: 'Brendan Haywood', number: 33, shoe: 15, points: 6, rebounds: 12, assists: 12, steals: 22, blocks: 5, slam_dunks: 12}
      ]
    }
  }
end

def num_points_scored(name) 
  game_hash.each do |home_or_away, team_info| 
  team_info[:players].each do |player| 
  if name == player[:player_name]
  return player[:points]
end 
end 
end 
end 

def shoe_size(name) 
  game_hash.each do |home_or_away, team_info| 
  team_info[:players].each do |player| 
  if name == player[:player_name]
  return player[:shoe]
end 
end 
end 
end 

def team_colors(team_name)
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team_name
      return team_data[:colors].map(&:capitalize)
    end
  end
end 

def team_names 
   game_hash.map do |home_or_away, team_info|  
 team_info[:team_name] 
end  
end 

def player_numbers(team)
  game_hash.each do |home_or_away, team_info| 
    if team_info[:team_name] == team 
  return team_info[:players].map do |player| 
  player[:number]
end   
end 
end 
end 

 def player_stats(name) 
game_hash.each do |home_or_away, team_info|  
team_info[:players].each do |player|  
if name == player[:player_name]
player.shift
end    
 end  
 end
 end
