json.extract! patient, :id, :last_name, :first_name, :dni, :address, :coverage, :observations, :created_at, :updated_at
json.url patient_url(patient, format: :json)
