class CreateAdvertisings < ActiveRecord::Migration[5.1]
  def change
    create_table :advertisings do |t|
      t.string :title
      t.text :observations
      t.string :state
      t.date :higdate
      t.date :lowdate

      t.timestamps
    end
  end
end


