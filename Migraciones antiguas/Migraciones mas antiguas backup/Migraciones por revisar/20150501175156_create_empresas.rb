class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :rut
      t.string :digito_verificador
      t.string :giro
      t.string :domicilio_comercial
      t.string :representante_legal
      t.string :mail
      t.string :telefono
      t.string :cuenta_bancria
      t.string :banco
      t.integer :estado

      t.timestamps
    end
  end
end
