require "pry"


 def points_for(player_name)
  game_hash[:home_team][:players].each do |player|
    if player[:name] == player_name
      return player[:points]
    end
  end
end
 def game_hash
  {
  :home_team => {
    :name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
      :name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {
      :name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {
      :name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      }
    ]
  },
  :away_team => {
    :name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
      :name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {
      :name => "Bismak Biyombo", 
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 7,
      :blocks => 15,
      :slam_dunks => 10
      },
      {
      :name => "DeSagna Diop", 
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {
      :name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {
      :name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
      }
    ]
  }
}
end


 def num_points_scored (name)
  answer = []
   game_hash.each do |location, team_data|
    players_array = details_hash[:players]
      players_array.each do |player_details_hash|
        if player_details_hash[:name] == name
          answer = player_details_hash[:points]
        end
      end
  end
  answer
end


 def shoe_size(name)
  answer = nil
   game_hash.each do |team, details_hash|
    players_array = details_hash[:players]
      players_array.each do |player_details_hash|
        if player_details_hash[:name] == name
          answer = player_details_hash[:shoe]
        end
      end
  end
  answer
end
 def team_colors (team_name)
    colors = nil
    game_hash.each do |team, team_details_hash|
        if team_details_hash[:name] == team_name
            colors = team_details_hash[:colors].flatten
        end
    end
    colors
end
 def team_names
  game_hash.collect do |team, team_details_hash|
    team_details_hash[:name] 
  end
end
 def player_numbers (team_name)
  player_numbers_list = []
  game_hash.each do |team, team_details_hash|
    if team_details_hash[:name] == team_name
      team_details_hash[:players].each do |player|
        player.each do |key, value|
          if key == :number 
            player_numbers_list << value
          end
        end
      end
    end
  end
  player_numbers_list
end
 def player_stats(player_name)
  player_stats = {}
  game_hash.each do |team, team_details_hash|
    team_details_hash[:players].each do |stats|
       if stats[:name] == player_name
        stats.delete(:name)
        player_stats = stats
      end
    end
  end
  player_stats
end

def num_points_scored(name)
game_hash.each do |location, team_data|
    team_data.each do |x, y|
            if x == name
              return y[:points]
            end
        end
end
end

 def shoe_size(name)
  game_hash.each do |location, team_data|
      team_data.each do |attribute, data|
        binding.pry
         team_data.each do |data|
              if attribute == name
                  return y[:shoe]
              end
      end
  end
end

def team_colors(team_names)
  game_hash.collect do |location, team|
    if team[:team_name] == team_names
      return team[:colors]
    end
  end
end


def shoe_size(player_names)
  game_hash.each do |location, team|
     game_hash.collect do |attribute, data|
    if attribute[:players] == player_names
      return data[:size]
    end
  end
end


