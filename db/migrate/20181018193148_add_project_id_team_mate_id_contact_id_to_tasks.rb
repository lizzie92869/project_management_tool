class AddProjectIdTeamMateIdContactIdToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :contact_id, :integer
    add_column :tasks, :team_mate_id, :integer
    add_column :tasks, :project_id, :integer
  end
end
