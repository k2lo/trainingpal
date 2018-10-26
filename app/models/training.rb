class Training < ApplicationRecord
	has_many :excercises
	mount_uploader :cover, CoverUploader
	accepts_nested_attributes_for :excercises, allow_destroy: true

	validates_presence_of :name
end
