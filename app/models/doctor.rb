	class Doctor < ApplicationRecord
	has_many :appointments, dependent: :destroy
	has_many :patients, through: :appointments
  #tener en cuenta ambos renglones siguientes para relacion con tabla intermedia
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  has_many :doctor_consulting_rooms
  has_many :consulting_rooms, through: :doctor_consulting_rooms
  accepts_nested_attributes_for :doctor_specialties
  validates_presence_of :last_name, :first_name



def fullname
  "#{first_name},  #{last_name} "
end

 def self.options_for_sorted_by
    [
      ["last_name (a-z)", "last_name_asc"],
	  ] 
  end


def self.doctor_specialty id
  joins(:specialties).where(specialties: {id: id})  
end
#scope :doctor_specialty, -> (name) { joins(:specialty).where(specialties: {name: name}) }

scope :last_name, ->(last_name) { where("last_name LIKE ?", "#{last_name}%") }


 filterrific(
    default_filter_params: { sorted_by: "created_at_desc" },
    available_filters: [
      :doctor_specialty,
      :sorted_by,
      :last_name,
    ],
  )
scope :sorted_by, ->(sort_option) {
  direction = /desc$/.match?(sort_option) ? "desc" : "asc"
  case sort_option.to_s
  when /^Apellido/
    order("LOWER(doctors.last_name) #{direction}")
  when /^Nombre/
    order("LOWER(doctors.first_name) #{direction}")
  when /^Consultorio/
    order("(doctors.consulting_room) #{direction}")
  when /^Especialidad/
    order("(doctors.specialty) #{direction}")

  end
}


end