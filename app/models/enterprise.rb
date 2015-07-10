class Enterprise < ActiveRecord::Base
  extend Enumerize

  validates_presence_of :name, :address

  # enumerize :num_of_employee, in: [:less_than_50, :more_than_50], default: :more_than_50
end
