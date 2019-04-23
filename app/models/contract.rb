class Contract < ApplicationRecord
  serialize :recurring, Hash
  
  belongs_to :user, optional: true
  has_one :payment, inverse_of: :contract
  belongs_to :service, inverse_of: :contracts

  rails_admin do 
      configure :payment do
        hide
      end

      
  end

end
