class Storextra < ApplicationRecord
  belongs_to :store
  belongs_to :category
  has_one_attached :avatar, dependent: :destroy
  has_many :comments, dependent: :destroy
end
