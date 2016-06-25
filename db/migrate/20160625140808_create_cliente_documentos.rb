class CreateClienteDocumentos < ActiveRecord::Migration
  def change
    create_table :cliente_documentos do |t|
      t.integer :cliente_id
      t.string :documento
      t.integer :tipodoc_id
      t.integer :emisordoc_id
      t.date :vencimiento
      t.string :codseg

      t.timestamps null: false
    end
  end
end
