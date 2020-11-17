class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :storextra

  def blank_stars
    5 - rating.to_i
  end
  validates :rating,  numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0, only_integer: true }
end
