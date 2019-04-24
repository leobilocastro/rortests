class Category < ApplicationRecord
    has_and_belongs_to_many :services
    validates_uniqueness_of :name
end
