class Project < ApplicationRecord
	has_many :progresses
	has_many :jobs
    has_many :users, through: :jobs
    has_many :rooms
    has_many :houses, through: :rooms
end
