class Service < ApplicationRecord
    has_many :contracts
    has_many :user_services
    has_many :users, through: :user_services
    belongs_to :category
end
