class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :apellido
      t.string :apellido2
      t.string :nombres
      t.string :documento
      t.integer :tipodoc_id
      t.integer :emisordoc_id
      t.string :contacto
      t.integer :ciiu_id
      t.integer :tcliente_id
      t.integer :direccion_id

      t.timestamps null: false
    end
  end
end
