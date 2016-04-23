class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
    	t.integer :job_id
    	t.integer :user_id
    	t.boolean :awarded, default: false
    	t.timestamps
    end
  end
end
