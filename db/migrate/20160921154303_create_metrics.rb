class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :organization_id
      t.integer :csf_function_id
      t.integer :unit_id
      t.integer :recent_maturity_level
      t.integer :target_maturity_level
      t.timestamps null: false
    end
  end
end
