class AddSlugToCsfCategories < ActiveRecord::Migration
  def change
  	add_column :csf_categories, :slug, :string
  	add_index :csf_categories, :slug, unique: true
  end
end