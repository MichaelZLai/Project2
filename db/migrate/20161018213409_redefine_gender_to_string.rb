class RedefineGenderToString < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :gender
    add_column :users, :gender, :string
  end
end
