class CreateMetricTargetValues < ActiveRecord::Migration
  def change
    create_table :metric_target_values do |t|
      t.integer :metric_id
      t.integer :period_id
      t.decimal :target_value, :precision => 10, :scale => 2
      t.integer :target_maturity_level

      t.timestamps null: false
    end
  end
end
