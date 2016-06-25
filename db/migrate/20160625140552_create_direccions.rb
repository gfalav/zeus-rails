class CreateDireccions < ActiveRecord::Migration
  def change
    create_table :direccions do |t|
      t.integer :calle_id
      t.integer :nro
      t.string :pdepto
      t.string :acceso

      t.timestamps null: false
    end
  end
end
