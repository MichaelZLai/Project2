class AddAdditionalAttributesToAthlete < ActiveRecord::Migration[5.0]
  def change
    add_column :athletes, :clean_jerk, :string
    add_column :athletes, :snatch, :string
    add_column :athletes, :deadlift, :string
    add_column :athletes, :back_squat, :string
    add_column :athletes, :bench, :string
  end
end
