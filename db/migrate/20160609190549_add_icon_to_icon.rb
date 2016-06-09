class AddIconToIcon < ActiveRecord::Migration
  def change
    add_attachment :icons, :icon
  end
end
