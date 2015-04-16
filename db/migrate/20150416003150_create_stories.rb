class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :story
      t.string :quote

      t.timestamps null: false
    end
  end
end
