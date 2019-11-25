class UserDoctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


   #scope :for_scream, -> { where(<%= appointment.doctor.first_name %> = <%= user_doctor.name %>) }


end
