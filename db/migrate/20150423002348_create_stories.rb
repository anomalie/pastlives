class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :text
      t.string :category
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
