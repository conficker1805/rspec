class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :position
      t.datetime    :birthday
      t.float       :salary
      t.references  :enterprise

      t.timestamps
    end
  end
end
