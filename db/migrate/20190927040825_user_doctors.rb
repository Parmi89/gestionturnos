class UserDoctors < ActiveRecord::Migration[5.2]
  def change

  	add_column :user_doctors,:name,:string 
  end
end
