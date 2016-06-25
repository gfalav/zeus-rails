class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :pais

      t.timestamps null: false
    end
  end
end
