class Payment < ApplicationRecord
    belongs_to :contract, inverse_of:  :payment
end
