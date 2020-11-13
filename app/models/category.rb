class Category < ApplicationRecord
    has_many :storextras, dependent: :destroy
end
