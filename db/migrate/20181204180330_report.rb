class Report < ActiveRecord::Migration[5.0]
  def change
    create_table :report do |t|
      t.string :crime
      t.string :location
      t.datetime :date
    end
  end
end
