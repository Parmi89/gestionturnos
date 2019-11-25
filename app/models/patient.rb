class Patient < ApplicationRecord
has_many :appointments
has_many :doctors, through: :appointments
 
scope :by_id, -> (id) { where(id: id) } 
scope :dni, -> (dni) { where(dni: dni) } 
scope :last_name, ->(last_name) { where("last_name LIKE ?", "#{last_name}%") }
  
def fullname
  "#{first_name}, #{last_name} "
end


filterrific(
    default_filter_params: { sorted_by: "created_at_desc" },
    available_filters: [
      :sorted_by,
      :by_id,
      :dni,
      :last_name,
      :search_query,      
    ],
)
scope :sorted_by, ->(sort_option) {
  direction = /desc$/.match?(sort_option) ? "desc" : "asc"
  case sort_option.to_s
  when /^Id/
    order("(patients.id) #{direction}")
  when /^Apellido/
    order("LOWER(patients.last_name) #{direction}")
  when /^Nombre/
    order("LOWER(patients.first_name) #{direction}")
  when /^Dni/
    order("(patients.dni) #{direction}")

  end
}
end
