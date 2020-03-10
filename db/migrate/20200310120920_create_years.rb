class CreateYears < ActiveRecord::Migration[6.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.belongs_to :person, null: false, foreign_key: true
      t.timestamps
    end
  end
end
