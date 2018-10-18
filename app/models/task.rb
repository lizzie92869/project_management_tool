class Task < ApplicationRecord
	belongs_to :project
	belongs_to :team_mate, through: :project
	belongs_to :contact, through: :project
end
