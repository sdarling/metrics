class CreateSepMetrics < ActiveRecord::Migration
  def change
    create_table :sep_metrics do |t|

      t.timestamps null: false
    end
  end
end
