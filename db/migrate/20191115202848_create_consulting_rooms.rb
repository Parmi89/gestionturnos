class CreateConsultingRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :consulting_rooms do |t|
      t.string :number

      t.timestamps
    end
  end
end
