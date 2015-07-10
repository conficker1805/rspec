require 'rails_helper'

describe Enterprise do
  describe 'Associations' do
  end

  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
    it { should enumerize(:num_of_employee).in(:less_than_50, :more_than_50).with_default(:more_than_50) }
  end
end
