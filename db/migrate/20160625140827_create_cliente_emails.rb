class CreateClienteEmails < ActiveRecord::Migration
  def change
    create_table :cliente_emails do |t|
      t.integer :cliente_id
      t.string :email
      t.integer :tipoemail_id

      t.timestamps null: false
    end
  end
end
