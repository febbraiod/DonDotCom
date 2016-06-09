class DropProgramImages < ActiveRecord::Migration
  def change
    drop_table :program_images
  end
end
