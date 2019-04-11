class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.datetime :start_time
      t.boolean :completed
      t.text :observations
      t.text :recurring
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.timestamps
    end
  end
end
