class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    	t.integer :job_application_id
    	t.integer :user_id
    	t.text :comment
    	t.timestamps
    end
  end
end
