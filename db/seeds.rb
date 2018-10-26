trainings = %w(Przysiady Klata Biceps Nogi Cardio)

trainings.each do |name|
  Excercise.create name: name
end