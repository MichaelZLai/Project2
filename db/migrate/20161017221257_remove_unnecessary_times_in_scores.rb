class RemoveUnnecessaryTimesInScores < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :reps_complete
    remove_column :scores, :rounds_complete
    rename_column :scores, :time_complete, :score
    add_column :scores, :comments, :text
  end
end
