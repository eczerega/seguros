class CreateInformacionProductos < ActiveRecord::Migration
  def change
    create_table :informacion_productos do |t|
      t.string :nombre
      t.string :tipo
      t.integer :prima
      t.integer :valor_asegurado
      t.integer :duracion_meses
      t.string :aseguradora_responsable

      t.timestamps
    end
  end
end
