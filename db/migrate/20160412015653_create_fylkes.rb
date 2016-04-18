class CreateFylkes < ActiveRecord::Migration
  def change
    create_table :fylkes do |t|
    	t.string :name
    end
  end
end
