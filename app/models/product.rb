class Product < ApplicationRecord
    belongs_to :storextra
    belongs_to :store
    has_many :orders, dependent: :destroy
    has_many :users, through: :orders, dependent: :destroy
    has_one_attached :image ,dependent: :destroy

    validates :image, attached: true, content_type: [:png, :jpg, :jpeg]

   
end
