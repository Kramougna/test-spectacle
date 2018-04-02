class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.references :user, foreign_key: true
      t.integer :source

      t.timestamps
    end
  end
end
