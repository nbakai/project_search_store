class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :storextra

  default_scope {where(storextra_id: @storextra).order("created_at DESC").limit(15)}
  validates :rating,  numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0, only_integer: true }
  validates :content, length: {maximum: 1000, message: 'El máximo es de 1000 caracteres!'}

  def blank_stars
    5 - rating.to_i
  end
 
end
