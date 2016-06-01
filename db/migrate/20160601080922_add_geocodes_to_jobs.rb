class AddGeocodesToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :lat1, :float
  	add_column :jobs, :long1, :float
  	add_column :jobs, :lat2, :float
  	add_column :jobs, :long2, :float
  end
end
