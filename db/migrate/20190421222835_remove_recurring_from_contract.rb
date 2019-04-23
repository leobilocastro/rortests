class RemoveRecurringFromContract < ActiveRecord::Migration[5.0]
  def change
    remove_column :contracts, :recurring, :text
  end
end
