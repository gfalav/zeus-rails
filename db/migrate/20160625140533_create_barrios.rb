class CreateBarrios < ActiveRecord::Migration
  def change
    create_table :barrios do |t|
      t.integer :localidad_id
      t.string :barrio

      t.timestamps null: false
    end
  end
end
