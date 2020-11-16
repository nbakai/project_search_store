class Product < ApplicationRecord
    belongs_to :storextra
    belongs_to :store
    has_many :order_items
    has_many :orders, through: :order_items
    has_one_attached :image, dependent: :destroy
end
