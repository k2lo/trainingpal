class Training < ApplicationRecord
	has_many :excercises
	mount_uploader :cover, CoverUploader
end
