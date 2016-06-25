class CreateClienteTelefonos < ActiveRecord::Migration
  def change
    create_table :cliente_telefonos do |t|
      t.integer :cliente_id
      t.decimal :telefono
      t.integer :tipotel_id

      t.timestamps null: false
    end
  end
end
