class RenameScoresIdInWorkouts < ActiveRecord::Migration[5.0]
  def change
      rename_column :workouts, :scores_id, :score_id
  end
end
