class TeamCell < Cell::ViewModel
  include ::Cell::Slim
  # property :team

  def show
    render
  end

  def index
    @teams = Team.all
    @total = Team.count
    render
  end

  def leader
    ruby_team = Team.find_by(name: 'Ruby')
    leader = ruby_team.employees.find_by(position: 'Team leader')
    leader.first_name
  end

  private
end
