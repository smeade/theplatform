class CreateScratchpads < ActiveRecord::Migration
  def change
    create_table :scratchpads do |t|
      t.string :name
      t.text :description
      t.boolean :active
      t.timestamp :starts_at

      t.timestamps null: false
    end
  end
end
