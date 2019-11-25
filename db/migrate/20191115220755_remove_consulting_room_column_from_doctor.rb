class RemoveConsultingRoomColumnFromDoctor < ActiveRecord::Migration[5.2]
  def change

  	remove_column :doctors,:consulting_room 

  end
end
