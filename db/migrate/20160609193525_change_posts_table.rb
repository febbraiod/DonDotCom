class ChangePostsTable < ActiveRecord::Migration
  def change
    remove_column :posts, :icon
    add_column :posts, :icon_id, :integer
  end
end
