class AddSlugToCsfFunctions < ActiveRecord::Migration
  def change
  	add_column :csf_functions, :slug, :string
  	add_index :csf_functions, :slug, unique: true
  end
end

