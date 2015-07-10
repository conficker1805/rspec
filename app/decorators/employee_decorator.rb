class EmployeeDecorator < Draper::Decorator
  delegate_all

  def generate_email
    "#{ last_name.downcase }.#{ first_name.downcase }@dadadee.com"
  end
end
