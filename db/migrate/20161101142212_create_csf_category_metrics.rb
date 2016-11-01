class CreateCsfCategoryMetrics < ActiveRecord::Migration
  def change
    create_table :csf_category_metrics do |t|
      t.integer :csf_category_id
      t.integer :metric_id

      t.index [:csf_category_id, :metric_id]
    end
  end
end
