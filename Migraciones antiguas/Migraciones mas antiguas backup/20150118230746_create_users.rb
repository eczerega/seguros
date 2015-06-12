class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.string :rut
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :kind
      t.integer :active

      t.timestamps
    end
  end
end
