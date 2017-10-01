class Progress < ApplicationRecord
	belongs_to :project
	has_many :photos
	accepts_nested_attributes_for :photos, :allow_destroy => true
end
