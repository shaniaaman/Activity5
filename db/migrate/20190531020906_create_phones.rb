class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :name
      t.string :brand
      t.string :year_released
      t.string :camera
      t.string :mpixels
      t.string :interna_stor
      t.integer :sim_slots
      t.string :sc_size
      t.string :os
      t.integer :stock

      t.timestamps
    end
  end
end
