class CreateMaturityLevelValues < ActiveRecord::Migration
  def change
    create_table :maturity_level_values do |t|
      t.integer :maturity_level_id
      t.datetime :effective_date

      t.timestamps null: false
    end
  end
end
