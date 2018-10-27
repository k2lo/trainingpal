# frozen_string_literal: true

class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.string :name
      t.string :cover
      t.text :description

      t.timestamps
    end
  end
end
