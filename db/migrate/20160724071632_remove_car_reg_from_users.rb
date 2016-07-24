class RemoveCarRegFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :car_reg, :string
  end
end
