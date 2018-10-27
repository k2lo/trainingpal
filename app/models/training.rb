class Training < ApplicationRecord
	has_many :excercises, dependent: :destroy
	mount_uploader :cover, CoverUploader
	accepts_nested_attributes_for :excercises, allow_destroy: true
	default_scope { order(created_at: :asc) }

	validates_presence_of :name
	validates_presence_of :excercises
end
