class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
t.string :menu
t.datetime :meal_date
t.integer :out_price
t.integer :in_price
t.integer :user_id
t.integer :diff_price
      t.timestamps
    end
  end
end
