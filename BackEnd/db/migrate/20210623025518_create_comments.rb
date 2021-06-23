class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :nombre
      t.string :correo
      t.integer :edad

      t.timestamps
    end
  end
end
