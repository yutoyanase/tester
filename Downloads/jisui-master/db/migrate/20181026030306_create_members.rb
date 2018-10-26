class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :number, null: false #ID
      t.string :name, null: false #ユーザー名
      t.string :full_name #本名
      t.string :email #メールアドレス
      t.timestamps
    end
  end
end
