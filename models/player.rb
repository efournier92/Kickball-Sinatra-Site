require_relative "../lib/team_data"

class Player

  attr_reader :name, :position

  def initialize(name, position, team)
    @name     = name
    @position = position
    @team     = team
  end

  def all
    all_players = []
    team_data   = TeamData.to_h
    team_data.keys.each do |team_name|
      team_data[team_name].each do |player|
        all_players << Player.new(player[1], player[0], team_name)
      end
    end
    all_players
  end
end
