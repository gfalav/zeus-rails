class CreateCalles < ActiveRecord::Migration
  def change
    create_table :calles do |t|
      t.integer :barrio_id
      t.string :calle

      t.timestamps null: false
    end
  end
end
