class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :total
      t.integer :quantity
      t.string :active
      t.string :boolean
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
