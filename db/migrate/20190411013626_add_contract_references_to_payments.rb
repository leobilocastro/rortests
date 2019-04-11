class AddContractReferencesToPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :payments, :contract, foreign_key: true
  end
end
