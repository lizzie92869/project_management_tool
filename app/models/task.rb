class Task < ApplicationRecord
	belongs_to :team_mate
	belongs_to :project
	has_many :contacts
end
