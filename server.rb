require "sinatra"
require_relative "models/player"
require_relative "models/team"

get "/" do
  teams  = Team.new("")
  @teams = teams.all
  erb :index
end

get '/teams/:name' do
  name = params[:name]
  @team = Team.new(name)
  erb :teams
end

get '/positions' do
  teams      = Team.new("")
  @positions = teams.positions

  erb :positions
end

get '/positions/:position' do
  teams     = Team.new("")
  @teams    = teams.all
  @position = params[:position]

  erb :position_players
end
