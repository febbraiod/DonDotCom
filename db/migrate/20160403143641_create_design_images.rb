class CreateDesignImages < ActiveRecord::Migration
  def change
    create_table :design_images do |t|
      t.integer :design_id
      t.string :thumb_url
      t.string :fullsize_url
      t.text :description
    end
  end
end
