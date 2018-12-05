class Locations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.integer :zip_code
      t.string :address
      t.string :city
    end
  end
end

