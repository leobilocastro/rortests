class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.text :description
      t.string :title
      t.decimal :price
      t.time :day_first
      t.time :day_last
      t.time :hour_first
      t.time :hour_last
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
