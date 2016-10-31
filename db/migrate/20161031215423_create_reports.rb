class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :source_id
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
