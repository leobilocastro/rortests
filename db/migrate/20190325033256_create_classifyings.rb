class CreateClassifyings < ActiveRecord::Migration[5.0]
  def change
    create_table :classifyings do |t|
      t.string :name
      t.references :service, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
