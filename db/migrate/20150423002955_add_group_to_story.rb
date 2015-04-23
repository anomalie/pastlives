class AddGroupToStory < ActiveRecord::Migration
  def change
    add_reference :stories, :group, index: true, foreign_key: true
  end
end
