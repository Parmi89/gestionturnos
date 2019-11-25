class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  scope :for_scream, -> { where(date: "12/12/2019", state: "Pendiente") }
  #scope :for_scream, -> { where(date: Date.today.to_es, state: "Pendiente") }
scope :pendiente, ->{ where(state: "Pendiente") } 
scope :atendido, ->{ where(state: "Atendido") } 
scope :llamado, ->{ where(state: "Llamado una vez") } 
#CONSULTA TABLA RELACIONADA
scope :dni, -> (dni) { joins(:patient).where(patients: {dni: dni}) }
scope :by_id, -> (id) { where(id: id) } 
scope :fecha, -> (date) { where(date: date) } 


 filterrific(
    default_filter_params: { sorted_by: "created_at_desc" },
    available_filters: [
      :sorted_by,
      :by_id,
      :dni,
      :fecha,
      ],
  )
scope :sorted_by, ->(sort_option) {
  direction = /desc$/.match?(sort_option) ? "desc" : "asc"
  case sort_option.to_s
  when /^Turno/
    order("(appointments.id) #{direction}")
     when /^Fecha/
    order("(appointments.date) #{direction}")
     when /^Estado/
    order("(appointments.state) #{direction}")
  end
}
end
