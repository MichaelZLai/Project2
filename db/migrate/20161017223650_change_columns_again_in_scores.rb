class ChangeColumnsAgainInScores < ActiveRecord::Migration[5.0]
  def change
    rename_column :scores, :class_time, :workout_time
    rename_column :scores, :comments, :notes
    rename_column :scores, :score, :workout_score
  end
end
