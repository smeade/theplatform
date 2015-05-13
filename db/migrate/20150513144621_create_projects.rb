class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :account, index: true, foreign_key: true
      t.string :name
      t.string :headline
      t.string :subhead
      t.string :slug
      t.string :notice
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :active

      t.timestamps null: false
    end
  end
end
