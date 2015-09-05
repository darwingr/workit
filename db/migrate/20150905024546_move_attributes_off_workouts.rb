class MoveAttributesOffWorkouts < ActiveRecord::Migration
  def change
    change_table :workouts do |t|
      t.remove :focus, :title
      t.column :started_at, :timestamp
      t.column :finished_at, :timestamp
      t.column :workout_log, :text
    end
  end
end
