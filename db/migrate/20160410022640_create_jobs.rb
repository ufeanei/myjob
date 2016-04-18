class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :payment
      t.string :street_addr
      t.string :destination_addr 
      t.string :contact_number    
      t.integer :fylke_id
      t.integer :user_id
      t.integer :kommune_id

      t.timestamps
      
    end
  end
end
