class Photo < ApplicationRecord
	belongs_to :progress
	mount_uploader :progessimage, ProgessimageUploader
end
