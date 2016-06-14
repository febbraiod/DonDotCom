class ChangeProgramsTable < ActiveRecord::Migration
  def change
    remove_column :programs, :main_image_url
    add_column :programs, :title, :string
  end
end
