class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.text :description
      t.integer :organization_id
      t.integer :csf_function_id
      t.integer :unit_id
      t.integer :recent_maturity_level
      t.integer :target_maturity_level
      t.integer :owner_id
      t.decimal :ml_1, :precision => 10, :scale => 2
      t.decimal :ml_2, :precision => 10, :scale => 2
      t.decimal :ml_3, :precision => 10, :scale => 2
      t.decimal :ml_4, :precision => 10, :scale => 2
      t.boolean :active, :default => true
      t.timestamps null: false
    end
  end
end
