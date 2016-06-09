class FixPostsTable < ActiveRecord::Migration
  def change

    remove_column :posts, :icon_file_name
    remove_column :posts, :icon_content_type
    remove_column :posts, :icon_file_size
    remove_column :posts, :icon_updated_at

  end
end
