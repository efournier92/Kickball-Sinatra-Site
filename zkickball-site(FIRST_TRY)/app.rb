require "sinatra"
require "pry"
require_relative "lib/team_data"

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = TeamData.to_h.keys
  erb :index
end

get "/teams/:team_name" do
  @team = TeamData.to_h
  erb :show_team
end
