class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincia do |t|
      t.integer :pais_id
      t.string :provincia

      t.timestamps null: false
    end
  end
end
