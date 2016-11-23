class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :year
      t.integer :fy_year
      t.integer :month
      t.string :month_name
      t.string :month_short_name
      t.integer :quarter
      t.integer :fy_quarter
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
