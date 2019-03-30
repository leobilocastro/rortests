class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :gender
      t.date :date_of_birth
      t.string :cpf
      t.integer :role

      t.timestamps
    end
  end
end
