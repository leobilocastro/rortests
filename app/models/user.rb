class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    enum role: [:client, :admin]
    enum gender: [:male, :female]
    has_many :phones,  dependent: :destroy
    has_many :services

    has_one :address, dependent: :destroy, inverse_of:  :user
    attr_accessor :address_attributes
    attr_accessor :address_id
    accepts_nested_attributes_for :address, :allow_destroy => true
    
    def address_id
      self.address.try :id
    end
    def address_id=(id)
      self.address = Address.find_by_id(id)
    end
  end
