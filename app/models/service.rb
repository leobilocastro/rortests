class Service < ApplicationRecord
  belongs_to :user
  has_many :contracts, inverse_of: :service
  
end
