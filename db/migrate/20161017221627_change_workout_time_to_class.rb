class ChangeWorkoutTimeToClass < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :workout_time, :class_time
  end
end
