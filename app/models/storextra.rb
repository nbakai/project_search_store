class Storextra < ApplicationRecord
  belongs_to :store, dependent: :destroy
  belongs_to :category, dependent: :destroy
end
