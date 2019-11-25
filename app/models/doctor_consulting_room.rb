class DoctorConsultingRoom < ApplicationRecord
  belongs_to :doctor
  belongs_to :consulting_room

end
