class Crime < ActiveRecord::Migration[5.0]
  def change
    create_table :crime do |t|
      t.string :incident_type
      t.string :parent_incident
    end
  end
end
