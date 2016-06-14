class AddLongDescToDesigns < ActiveRecord::Migration
  def change
    add_column :designs, :long_desc, :text
  end
end
