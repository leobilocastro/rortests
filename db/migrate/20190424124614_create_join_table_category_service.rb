class CreateJoinTableCategoryService < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :services do |t|
      # t.index [:category_id, :service_id]
      # t.index [:service_id, :category_id]
    end
  end
end
