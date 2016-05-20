class AddImageViewsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :image, :string
    add_column :jobs, :views, :integer 
  end
end
