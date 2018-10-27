# frozen_string_literal: true

trainings = ['Barbell Squat', 'Dumbbell Bench Press', 'Bent Over Barbell Row', 'Seated Barbell Military Press', 'Barbell Curl', 'Seated Triceps Press', 'Seated Calf Raise']

trainings.each do |name|
  Excercise.create name: name
end
