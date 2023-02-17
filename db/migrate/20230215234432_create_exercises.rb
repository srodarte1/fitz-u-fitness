class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :category
      t.integer :tempo

      t.timestamps
    end
  end
end
