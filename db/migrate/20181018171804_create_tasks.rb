class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :deadline
      t.integer :priority
      t.string :status
      t.integer :team_mate_id
      t.integer :project_id
 

      t.timestamps
    end
  end
end
