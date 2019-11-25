class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :last_name
      t.string :first_name
      t.string :consulting_room
      t.string :specialty

      t.timestamps
    end
  end
end
