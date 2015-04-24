class CreateGroupsStories < ActiveRecord::Migration
  def change
    create_table :groups_stories, id: false do |t|
      t.references :group, index: true
      t.references :story, index: true

    end
  end
end
