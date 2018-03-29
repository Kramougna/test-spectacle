class CreateSpectacles < ActiveRecord::Migration[5.1]
  def change
    create_table :spectacles do |t|
      t.string :name

      t.timestamps
    end
  end
end
