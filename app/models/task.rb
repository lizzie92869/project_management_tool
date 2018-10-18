class Task < ApplicationRecord
	belongs_to :project
	belongs_to :team_mate
	belongs_to :contact
end
