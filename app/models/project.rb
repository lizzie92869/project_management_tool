class Project < ApplicationRecord
	belongs_to :client 
	has_many :contacts
	has_many :team_mate
	has_many :tasks
end
