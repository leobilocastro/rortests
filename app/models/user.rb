class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many  :contracts
    has_many :user_services
    has_many :services, through: :user_services
    has_one :address
    has_many :phones
end
