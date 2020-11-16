class CreateOrderItem < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, type: :integer, foreign_key: true
      t.references :product, type: :integer, foreign_key: true
      t.integer :quantity
      t.integer :price
    end
  end
end
