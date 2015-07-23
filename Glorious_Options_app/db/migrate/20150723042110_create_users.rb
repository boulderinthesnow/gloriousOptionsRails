class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :username
      t.text :email
      t.text :password
      t.boolean :gluten_free
      t.boolean :dairy_free

      t.timestamps null: false
    end
  end
end
