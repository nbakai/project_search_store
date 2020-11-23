class Storextra < ApplicationRecord
  belongs_to :store
  belongs_to :category
  has_one_attached :avatar, dependent: :destroy 
  has_many :comments, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :avatar, content_type: [:png, :jpg, :jpeg]
  
  def rating_prom (storextra)
    @storextra = storextra
    comments = Comment.all
    rating_prom = 0
    contador = 0
    @storextra.comments.each do |comment|
      rating_prom += comment.rating.to_i
      contador += 1
    end 
    if rating_prom != 0
      @storextra.rating = rating_prom / contador
    end 
  end
 
end
