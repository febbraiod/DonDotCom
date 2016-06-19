class AddDisplayRanksToProgramsAndDesigns < ActiveRecord::Migration
  def change

    add_column :designs, :display_rank, :integer, :default => 100
    add_column :programs, :display_rank, :integer, :default => 100

  end
end
