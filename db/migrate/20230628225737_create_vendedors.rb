class CreateVendedors < ActiveRecord::Migration[7.0]
  def change
    create_table :vendedors do |t|
      t.integer :number
      t.string :nombre
      t.string :email
      t.string :oficina
      t.string :manager

      t.timestamps
    end
  end
end
