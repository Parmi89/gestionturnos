class ConsultingRoom < ApplicationRecord
	has_many :doctors
    has_many :doctors, through: :doctor_specialties
    has_many :doctor_consulting_room
end
