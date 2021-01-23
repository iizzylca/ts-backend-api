class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
