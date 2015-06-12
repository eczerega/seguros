class CreateShopPoints < ActiveRecord::Migration
  def change
    create_table :shop_points do |t|
      t.string :name
      t.string :city
      t.string :comuna
      t.string :rut
      t.string :street
      t.string :image

      t.timestamps
    end
  end
end
