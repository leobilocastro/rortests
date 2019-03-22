class Service < ApplicationRecord
    has_many :users, through: :contracts
    has_many :users, through: :user_services
    has_many :categories
end
