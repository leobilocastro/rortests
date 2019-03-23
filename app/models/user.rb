class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    enum role: [:client, :admin]
    enum gender: [:male, :female]
    has_one :address
    has_many :phones
    has_many :services
end
