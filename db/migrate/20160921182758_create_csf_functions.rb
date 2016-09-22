class CreateCsfFunctions < ActiveRecord::Migration
  def change
    create_table :csf_functions do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
