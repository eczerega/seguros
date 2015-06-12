class CreateInsuranceCompanies < ActiveRecord::Migration
  def change
    create_table :insurance_companies do |t|
      t.string :name
      t.string :rut
      t.string :image

      t.timestamps
    end
  end
end
