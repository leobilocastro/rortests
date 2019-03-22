class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.date :date
      t.boolean :completed
      t.varchar :observations
      t.references :payment, foreign_key: true
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.time :end_time
      t.time :start_time

      t.timestamps
    end
  end
end
