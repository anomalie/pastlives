class AddStoryToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :story, :string
    add_column :groups, :references, :string
  end
end
