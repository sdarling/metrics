class CreateCsfCategories < ActiveRecord::Migration
  def change
    create_table :csf_categories do |t|
      t.integer :csf_function_id
      t.string :name
      t.text :description
      t.string :abbreviation

      t.timestamps null: false
    end
  end
end
