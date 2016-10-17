class SwitchReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :workouts, :scores, foreign_key: true
    remove_reference :scores, :workout
  end
end
