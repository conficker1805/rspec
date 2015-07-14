module V1
  module Resources
    class Teams < Grape::API
      formatter :json, Grape::Formatter::Jbuilder

      resource :teams do
        desc 'List all Teams'

        get jbuilder: 'teams/index.jbuilder' do
          @teams = Team.all
          # http://localhost:3000/api/v1/teams
        end
      end
    end
  end
end
