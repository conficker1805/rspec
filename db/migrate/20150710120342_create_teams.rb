class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string  :name
      t.integer :num_of_member
      t.string  :purpose
      t.text    :description

      t.timestamp
    end
  end
end
