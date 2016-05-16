class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :application_id
    	t.integer :user_id
    	t.text :review
    	t.timestamps
    end
  end
end
