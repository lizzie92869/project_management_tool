class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :contacts
      t.integer :annual_budget
      t.string :note

      t.timestamps
    end
  end
end
