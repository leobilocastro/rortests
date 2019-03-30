class AddRecurringToContract < ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :recurring, :string
  end
end
