class AddStoryToUser < ActiveRecord::Migration
  def change
    add_column :users, :story, :string
    add_column :users, :references, :string
  end
end
