class CreateMetricUsers < ActiveRecord::Migration
  def change
    create_table :metric_users do |t|
      t.integer :metric_id
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :metric_users, [:metric_id, :user_id]
  end
end
