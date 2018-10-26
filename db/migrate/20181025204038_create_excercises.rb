class CreateExcercises < ActiveRecord::Migration[5.2]
  def change
    create_table :excercises do |t|
    	t.string :name

    	t.timestamps
    end
  end
end
