class EmployeesController < ApplicationController
  def index
    @developer = Employee.find_by(last_name: 'Eovy').decorate
  end
end
