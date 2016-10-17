class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :workout_time
      t.integer :reps_complete
      t.string :rounds_complete
      t.string :time_complete

      t.timestamps
    end
  end
end
