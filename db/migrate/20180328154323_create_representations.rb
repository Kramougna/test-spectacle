class CreateRepresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :representations do |t|
      t.references :spectacle, foreign_key: true
      t.integer :price
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
