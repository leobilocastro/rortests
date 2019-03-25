class Service < ApplicationRecord
 belongs_to :user, inverse_of: :services
 has_many  :categories, through: :classifyings, inverse_of: :services 
 has_many  :classifyings, dependent: :destroy,  :autosave => true
 accepts_nested_attributes_for :categories, :allow_destroy => true
end
