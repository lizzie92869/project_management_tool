class Contact < ApplicationRecord
	has_many :tasks
	has_many :projects, through: :tasks
end
