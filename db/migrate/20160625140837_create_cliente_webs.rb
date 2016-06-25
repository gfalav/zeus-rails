class CreateClienteWebs < ActiveRecord::Migration
  def change
    create_table :cliente_webs do |t|
      t.integer :cliente_id
      t.string :web
      t.integer :tipoweb_id

      t.timestamps null: false
    end
  end
end
