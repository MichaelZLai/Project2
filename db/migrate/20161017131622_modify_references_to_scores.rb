class ModifyReferencesToScores < ActiveRecord::Migration[5.0]
  def change
      add_reference :scores, :workouts, foreign_key: true
      remove_reference :workouts, :score
  end
end
