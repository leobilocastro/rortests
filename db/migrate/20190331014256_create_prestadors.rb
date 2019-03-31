class CreatePrestadors < ActiveRecord::Migration[5.2]
  def change
    create_table :prestadors do |t|
      t.string :name
      t.string :phone
      t.string :password
      t.string :street
      t.string :num
      t.string :cep
      t.string :bairro
      t.string :city
      t.string :uf

      t.timestamps
    end
  end
end
