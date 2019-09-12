class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.integer :dni
      t.string :address
      t.string :coverage
      t.string :observations

      t.timestamps
    end
  end
end
