class CreateSoftwareCenterImports < ActiveRecord::Migration
  def change
    create_table :software_center_imports do |t|
      t.string :category
      t.integer :targeted_count
      t.integer :failed_count
      t.integer :unknown_count
      t.integer :non_compliant_count
      t.integer :compliant_count
      t.string :collection_name
      t.string :compliance_percentage
      t.string :configuration_baseline_revision
      t.string :configuration_baseline_name

      t.timestamps null: false
    end
  end
end
