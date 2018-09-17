class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :username
      t.integer :email_type
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
