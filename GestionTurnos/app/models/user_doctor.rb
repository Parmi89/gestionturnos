class UserDoctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   scope :for_scream, -> { where(date: "12/12/2019", state: "Pendiente") }
  #scope :for_scream, -> { where(date: Date.today.to_es, state: "Pendiente") }
           


end
