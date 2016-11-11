class CreateSccmMetrics < ActiveRecord::Migration
  def change
    create_table :sccm_metrics do |t|
      t.string :name
      t.text :description
      t.decimal :value, :precision => 10, :scale => 2

      t.timestamps null: false
    end
  end
end
