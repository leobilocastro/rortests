class Service < ApplicationRecord
  belongs_to :user
  has_many :contracts, inverse_of: :service
  has_many :categories, inverse_of: :service
  has_many :tags , through: :categories
end
