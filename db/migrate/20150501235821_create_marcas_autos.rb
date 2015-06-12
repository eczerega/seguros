class CreateMarcasAutos < ActiveRecord::Migration
  def change
    create_table :marcas_autos do |t|
      t.string :marca

      t.timestamps
    end
  end
end
