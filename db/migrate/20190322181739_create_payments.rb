class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.boolean :approved

      t.timestamps
    end
  end
end
