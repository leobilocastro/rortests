class User < ApplicationRecord
    has_many :services, through: :contracts
    has_many :services, through: :user_services
    has_one :address
    has_many :phones
end
