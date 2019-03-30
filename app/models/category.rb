class Category < ApplicationRecord
  has_many :classifyings, dependent: :destroy,  :autosave => true
  has_many :services, through: :classifyings
end

