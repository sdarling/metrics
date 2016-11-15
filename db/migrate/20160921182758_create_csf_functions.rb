class CreateCsfFunctions < ActiveRecord::Migration
  def change
    create_table :csf_functions do |t|
      t.string :name
      t.string :description
      t.text :goal_question
      t.decimal :avg_maturity_level, :precision => 10, :scale => 2

      t.timestamps null: false
    end
  end
end
