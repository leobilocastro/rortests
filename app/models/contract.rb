class Contract < ApplicationRecord
  belongs_to :payment
  belongs_to :user
  belongs_to :service
end
