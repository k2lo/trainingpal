class Excercise < ApplicationRecord
	belongs_to :training, required: false

	def self.default_exercises
		Excercise.where(training_id: nil).collect { |e| [ e.name ] }
	end

end