class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :organization_id
      t.integer :csf_function_id
      t.timestamps null: false
    end
  end
end
