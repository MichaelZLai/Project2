class ChangeWorkoutIdInScores < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :workouts_id, :workout_id
  end
end
