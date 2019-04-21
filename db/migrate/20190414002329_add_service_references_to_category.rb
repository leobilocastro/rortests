class AddServiceReferencesToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :service, foreign_key: true
  end
end
