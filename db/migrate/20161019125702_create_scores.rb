class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.datetime :effective_date
      t.decimal :actual_value, precision: 10, scale: 2
      t.decimal :target_value, precision: 10, scale: 2
      t.timestamps null: false
    end
  end
end
