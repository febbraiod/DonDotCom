class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.string :date
      t.text :content
      t.string :icon

      t.timestamps null: false
    end
  end
end
