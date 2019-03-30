class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :number
      t.string :neighborhood
      t.string :zip_code
      t.string :additional_info
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
