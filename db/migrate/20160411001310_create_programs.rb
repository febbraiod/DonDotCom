class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :main_image_url
      t.string :link
      t.text :description

      t.timestamps null: false
    end
  end
end
