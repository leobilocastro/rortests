class Tag < ApplicationRecord
    has_many :categories, inverse_of: :tag
    has_many :services, through: :categories
end
