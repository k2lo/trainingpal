# frozen_string_literal: true

class CreateExcercises < ActiveRecord::Migration[5.2]
  def change
    create_table :excercises do |t|
      t.string :name
      t.integer :reps
      t.integer :sets
      t.belongs_to :training, foreign_key: true

      t.timestamps
    end
  end
end
