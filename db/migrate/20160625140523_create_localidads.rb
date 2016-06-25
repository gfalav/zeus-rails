class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|
      t.integer :municipio_id
      t.string :localidad

      t.timestamps null: false
    end
  end
end
