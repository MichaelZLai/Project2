class SwitchReferencesForModels < ActiveRecord::Migration[5.0]
  def change
    add_reference :scores, :workout, foreign_key: true
    remove_reference :workouts, :score
  end
end
