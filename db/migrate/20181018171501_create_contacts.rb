class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.string :activity
      t.string :email
      t.string :phone_number
      t.string :note
      t.string :address

      t.timestamps
    end
  end
end
