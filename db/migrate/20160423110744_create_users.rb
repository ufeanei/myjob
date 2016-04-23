class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.text :user_self_description
      t.integer :kommune_id
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
