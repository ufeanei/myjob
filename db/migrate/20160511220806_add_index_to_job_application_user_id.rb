class AddIndexToJobApplicationUserId < ActiveRecord::Migration
  def change
  	add_index :job_applications, :user_id, unique: true
  end
end
