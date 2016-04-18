require_relative "../lib/team_data"

class Team

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def all
    all_teams = []
    team_data   = TeamData.to_h
    team_data.keys.each do |team_name|
        all_teams << Team.new(team_name)
      end
    all_teams
  end

  def players
    players = []
    team_data   = TeamData.to_h
    team_data[@name].each do |position, player|
      players << Player.new(player, position, @name)
    end
    players
  end

  def positions
    positions = []
    team_data = TeamData.to_h
    team_data["Simpson Slammers"].each do |position, player|
      positions << position
    end
    positions
  end
end
