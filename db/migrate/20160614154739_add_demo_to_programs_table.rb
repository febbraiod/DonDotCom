class AddDemoToProgramsTable < ActiveRecord::Migration
  def change
    add_column :programs, :demo, :string
  end
end
