class CreateMaturityLevels < ActiveRecord::Migration
  def change
    create_table :maturity_levels do |t|
      t.integer :metric_id
      t.integer :weighted_value
      t.decimal :low, :precision => 10, :scale => 2
      t.decimal :high, :precision => 10, :scale => 2

      t.timestamps null: false
    end
  end
end
