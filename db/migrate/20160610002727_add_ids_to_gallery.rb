class AddIdsToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :post_id, :integer
    add_column :galleries, :design_id, :integer
    add_column :galleries, :program_id, :integer
  end
end
