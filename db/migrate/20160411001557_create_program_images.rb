class CreateProgramImages < ActiveRecord::Migration
  def change
    create_table :program_images do |t|
      t.string :image_url
      t.text :description
      t.integer :program_id

      t.timestamps null: false
    end
  end
end
