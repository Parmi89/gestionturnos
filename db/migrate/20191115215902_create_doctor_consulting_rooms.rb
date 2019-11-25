class CreateDoctorConsultingRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_consulting_rooms do |t|
	t.belongs_to :doctor
    t.belongs_to :consulting_room

      t.timestamps
    end
  end
end
