class CreateSoftwareCenterImports < ActiveRecord::Migration
  def change
    create_table :software_center_imports do |t|
      t.string :category
      t.integer :targeter
      t.integer :failed
      t.integer :unknown
      t.integer :non_compliant
      t.integer :compliant
      t.string :collection_name
      t.string :compliance_percentage
      t.string :target_compliant_percentage
      t.string :configuration_baseline_revision
      t.string :conviguration_baseline_name

      t.timestamps null: false
    end
  end
end
