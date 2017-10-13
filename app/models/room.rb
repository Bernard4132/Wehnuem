class Room < ApplicationRecord
	belongs_to :house
	belongs_to :project
end
