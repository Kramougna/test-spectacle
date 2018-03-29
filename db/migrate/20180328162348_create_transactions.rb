class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :users, foreign_key: true
      t.integer :source

      t.timestamps
    end
  end
end
