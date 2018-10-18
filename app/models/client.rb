class Client < ApplicationRecord
	has_many :projects 
	has_many :team_mates, through: :projects 
	has_many :contacts, through: :projects 
end
