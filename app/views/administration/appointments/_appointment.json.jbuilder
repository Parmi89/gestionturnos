json.extract! appointment, :id, :doctor_id, :Paciente, :created_at, :updated_at, :state, :date, :reason
json.url appointment_url(appointment, format: :json)
