class AddPaidToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :paid, :boolean, default: false
  end
end
