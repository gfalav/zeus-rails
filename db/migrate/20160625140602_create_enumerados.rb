class CreateEnumerados < ActiveRecord::Migration
  def change
    create_table :enumerados do |t|
      t.string :radical
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
