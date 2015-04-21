class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :text
      t.string :category

      t.timestamps null: false
    end
  end
end
