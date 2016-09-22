class CreateMaturityValues < ActiveRecord::Migration
  def change
    create_table :maturity_values do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
