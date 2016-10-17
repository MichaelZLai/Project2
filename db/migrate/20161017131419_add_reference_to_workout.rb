class AddReferenceToWorkout < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :score, foreign_key: true
  end
end
