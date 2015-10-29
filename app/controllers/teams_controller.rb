class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @leader_name = cell(:team).(:leader)
  end
end
