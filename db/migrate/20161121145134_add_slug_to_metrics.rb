class AddSlugToMetrics < ActiveRecord::Migration
  def change
  	add_column :metrics, :slug, :string
  	add_index :metrics, :slug, unique: true
  end
end

