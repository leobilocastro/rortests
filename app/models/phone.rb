class Phone < ApplicationRecord
  belongs_to :user, optional: true

  rails_admin do
    configure :user do
        hide
    end
  end
end
