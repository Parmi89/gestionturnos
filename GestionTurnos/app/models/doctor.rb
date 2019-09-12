class Doctor < ApplicationRecord
has_many  :appointments
has_many :patients, through: :appointments
validates_presence_of :last_name, :first_name, :consulting_room, :specialty

end
