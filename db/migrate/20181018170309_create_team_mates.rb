class CreateTeamMates < ActiveRecord::Migration[5.1]
  def change
    create_table :team_mates do |t|
      t.string :name
      t.string :department
      t.string :picture
      t.string :expertise
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
