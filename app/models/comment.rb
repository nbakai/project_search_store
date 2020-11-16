class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :storextra

  def blank_stars
    5 - rating.to_i
  end
end
