class CreateMenuItems < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.string :description
      t.string :ingredients
      t.string :image_url
      t.integer :price
      t.belongs_to :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
