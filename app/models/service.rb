class Service < ApplicationRecord
  belongs_to :user
  has_many :contracts, inverse_of: :service
  has_and_belongs_to_many :categories
end
