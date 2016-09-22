class CreateMetricValues < ActiveRecord::Migration
  def change
    create_table :metric_values do |t|
      t.integer :metric_id
      t.decimal :value, :precision => 10, :scale => 2
      t.integer :maturity_value_id
      t.integer :month_id
      t.integer :year

      t.timestamps null: false
    end
  end
end
