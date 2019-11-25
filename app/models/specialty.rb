class Specialty < ApplicationRecord
	has_many :doctors
    has_many :doctors, through: :doctor_specialties
    has_many :doctor_specialties


    def self.options_for_select
      order("LOWER(name)").map { |e| [e.name, e.id,] }
    end

end

