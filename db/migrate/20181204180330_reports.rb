class Reports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.string :crime
      t.string :location
      t.string :date
    end
  end
end
