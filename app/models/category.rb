class Category < ApplicationRecord
  belongs_to :tags, dependent: :destroy,  :autosave => true, inverse_of: :category
  belongs_to :services, :autosave => true, inverse_of: :category, dependent: :destroy
end

