class Progress < ApplicationRecord
	belongs_to :project
	belongs_to :user
	has_many :comments
	has_many :photos
	accepts_nested_attributes_for :photos, :allow_destroy => true
end
