class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  scope :for_scream, -> { where(date: "12/12/2019", state: "Pendiente") }
  
end
