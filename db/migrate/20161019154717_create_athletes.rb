class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.integer :age
      t.string :height
      t.string :weight
      t.text :img_url
      t.string :gender

      t.timestamps
    end

    remove_column :users, :age
    remove_column :users, :height
    remove_column :users, :weight
    remove_column :users, :img_url
    remove_column :users, :gender
    add_reference :athletes, :user, foreign_key: true
  end
end
