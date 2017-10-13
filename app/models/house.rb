class House < ApplicationRecord
	  mount_uploader :picture, PictureUploader
      has_many :rooms
      has_many :projects, through: :rooms
end
