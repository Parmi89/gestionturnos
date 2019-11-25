class CreateSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :name
    end
  end
end
