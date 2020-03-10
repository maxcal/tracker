class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.belongs_to :year, null: false, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
