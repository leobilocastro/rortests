class AddTagReferencesToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :tag, foreign_key: true
  end
end
