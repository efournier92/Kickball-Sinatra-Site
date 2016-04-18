require "spec_helper"

RSpec.describe Player do

  let(:player) { Player.new("Bart Simpson", "Catcher", "Simpson Slammers") }

  describe "#initialize" do
    it "creates a valid instance with 3 arguments" do
      expect(player).to be_a(Player)
    end
  end

  describe "#all" do
    it "returns array of Player objects corresponding to every player" do
      expect(player.all).to be_an(Array)
    end
  end
end
