class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.text :description
      t.string :title
      t.decimal :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
