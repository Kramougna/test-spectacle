class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :representations, foreign_key: true
      t.references :users, foreign_key: true
      t.references :transactions, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
