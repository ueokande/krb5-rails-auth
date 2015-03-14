class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :fullname

      t.timestamps null: false
    end
    add_index :users, :name
  end
end
