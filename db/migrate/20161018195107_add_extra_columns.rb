class AddExtraColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :scores, :user_id, :integer
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :height, :string
    add_column :users, :weight, :string
    add_column :users, :gender, :boolean
    add_column :users, :img_url, :text
  end
end
