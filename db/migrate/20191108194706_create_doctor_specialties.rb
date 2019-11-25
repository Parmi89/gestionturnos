class CreateDoctorSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_specialties do |t|
    t.belongs_to :doctor
    t.belongs_to :specialty	
      t.timestamps
    end
  end
end
