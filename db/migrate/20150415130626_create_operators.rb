class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
    	t.string :name
    	t.string :email
    	t.integer :sector_id
    end
  end
end
