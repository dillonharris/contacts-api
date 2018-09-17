class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :number
      t.string :street
      t.string :suburb
      t.string :city
      t.string :province
      t.string :country
      t.string :postal_code
      t.integer :address_type
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
