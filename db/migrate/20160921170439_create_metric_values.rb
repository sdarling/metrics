class CreateMetricValues < ActiveRecord::Migration
  def change
    create_table :metric_values do |t|
      t.integer :metric_id
      t.decimal :value, :precision => 10, :scale => 2
      t.integer :maturity_level
      t.datetime :effective_date

      t.timestamps null: false
    end
  end
end
