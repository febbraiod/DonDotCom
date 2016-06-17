class ChangePostsTable < ActiveRecord::Migration
  def change
    remove_column :posts, :icon
    add_column :posts, :icon_id, :integer

    add_column :posts, :icon_file_name
    add_column :posts, :icon_content_type
    add_column :posts, :icon_file_size
    add_column :posts, :icon_updated_at
  end
end
