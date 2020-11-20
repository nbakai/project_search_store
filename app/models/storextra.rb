class Storextra < ApplicationRecord
  belongs_to :store
  belongs_to :category
  has_one_attached :avatar, dependent: :destroy 
  has_many :comments, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :avatar, content_type: [:png, :jpg, :jpeg]
  
end
