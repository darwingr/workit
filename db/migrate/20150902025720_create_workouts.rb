class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title, null: false
      t.string :focus, null: false
      t.string :intensity, null: false
      t.string :weekday
      t.timestamps null: false
    end
  end
end
