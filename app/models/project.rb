class Project < ApplicationRecord
	has_many :progresses
	has_one :user
	has_many :jobs
    has_many :users, through: :jobs
end
