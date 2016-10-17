class AddWorkoutDateToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :workout_date, :string
  end
end
