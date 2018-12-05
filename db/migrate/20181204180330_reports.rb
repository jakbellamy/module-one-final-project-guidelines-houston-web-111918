class Reports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.belongs_to :crime
      t.belongs_to :location
      t.string :date
    end
  end
end
