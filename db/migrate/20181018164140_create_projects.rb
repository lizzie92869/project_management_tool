class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :deadline
      t.string :status
      t.integer :budget
      t.string :note

      t.timestamps
    end
  end
end
