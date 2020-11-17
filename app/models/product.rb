class Product < ApplicationRecord
    belongs_to :storextra
    belongs_to :store
    has_many :order_items, dependent: :destroy
    has_many :orders, through: :order_items, dependent: :destroy
    has_many :users, through: :orders, dependent: :destroy
    has_one_attached :image, dependent: :destroy
end
