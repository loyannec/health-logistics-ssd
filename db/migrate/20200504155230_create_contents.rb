class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.belongs_to :parcel, foreign_key: true

      t.string :name
      t.integer :quantity, default: 1
      t.boolean :fragile, default: false

      t.timestamps
    end
  end
end
