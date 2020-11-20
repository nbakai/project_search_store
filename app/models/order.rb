class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  belongs_to :billing, optional: true
  # before_create :generate_number
  # belongs_to :user
 
  # has_many :order_items, dependent: :destroy
  # has_many :products, through: :order_items, dependent: :destroy
  
  # validates :number, uniqueness: true

  # def add_product(product_id, quantity)
  #   product = Product.find(product_id)
  #   if product && (product.stock > 0)
  #     order_items.create(product_id: product.id, quantity: quantity, price: product.price)
  #   end
  # end

  # def generate_number
  #   self.number ||= loop do
  #     random = "BO#{Array.new(9){rand(9)}.join}"
  #     break random unless self.class.exists?(number: random)
  #   end
  # end
  # def compute_total
  #   sum = 0
  #   order_items.each do |item|
  #     sum += item.price
  #   end
  #   update_attribute(:total, sum)
  # end
end
