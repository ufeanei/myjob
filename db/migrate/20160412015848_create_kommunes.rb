class CreateKommunes < ActiveRecord::Migration
  def change
    create_table :kommunes do |t|
    	t.string :name
    	t.integer :fylke_id
    end
  end
end
