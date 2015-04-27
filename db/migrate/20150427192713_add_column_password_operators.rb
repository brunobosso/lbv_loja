class AddColumnPasswordOperators < ActiveRecord::Migration
  def change
  	add_column :operators, :password, :string
  end
end