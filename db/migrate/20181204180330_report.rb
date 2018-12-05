class Report < ActiveRecord::Migration[5.0]
  def change
    create_table :report do |t|
      t.belongs_to :crime
      t.belongs_to :location
      t.string :date
    end
  end
end
