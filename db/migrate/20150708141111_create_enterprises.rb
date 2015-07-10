class CreateEnterprises < ActiveRecord::Migration
  def change
    create_table :enterprises do |t|
      t.string  :name
      t.string  :address
      t.integer :num_of_employee
      t.date    :date_of_incorporation
      t.boolean :published
      t.text    :description

      t.timestamps
    end
  end
end
