class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :patient, foreign_key: true

 	## Agregado por mi
      t.string :state
      t.date :date
      t.text :reason
      
      t.timestamps
    end
  end
end
