require "spec_helper"

RSpec.describe Team do

  let(:team) { Team.new("Simpson Slammers") }

  describe "#initialize" do
    it "creates a valid object with 1 argument" do
      expect(team).to be_a(Team)
    end
    it "has a reader for name" do
      expect(team.name).to eq("Simpson Slammers")
    end
  end
  describe "#all" do
    it "returns array of Team objects corresponding to each team" do
      expect(team.all).to be_an(Array)
      expect(team.all.count).to eq(4)
    end
    describe "#players" do
      it "returns array of Player objects corresponding to every player on that team" do
        expect(team.players).to be_an(Array)
        expect(team.players.count).to eq(9)
      end
    end
  end
end
