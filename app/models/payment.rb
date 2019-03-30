class Payment < ApplicationRecord
    belongs_to :service, inverse_of: :payment
end
