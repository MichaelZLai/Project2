class AddUsersToScore < ActiveRecord::Migration[5.0]
  def change
    remove_column :scores, :user_id
    add_reference :scores, :user, foreign_key: true
  end
end
