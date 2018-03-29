class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :country
      t.integer :zip_code
      t.date :birth_date
      t.integer :gender

      t.timestamps
    end
  end
end
