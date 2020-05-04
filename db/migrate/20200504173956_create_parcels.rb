class CreateParcels < ActiveRecord::Migration[6.0]
  def change
    create_table :parcels do |t|
      t.integer :status
      t.string :customer, null: false
      t.string :eircode, null: false

      t.timestamps
    end
  end
end
