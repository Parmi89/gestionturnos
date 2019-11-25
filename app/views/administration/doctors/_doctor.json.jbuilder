json.extract! doctor, :id, :last_name, :first_name, :consulting_room, :specialty, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
