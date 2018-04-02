class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.references :representation, foreign_key: true
      t.references :user, foreign_key: true
      t.references :deal, foreign_key: true
      t.integer :payment

      t.timestamps
    end
  end
end
