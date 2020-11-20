class AddBillingToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :billing, type: :integer, foreign_key: true
    add_column :orders, :paid, :boolean, default: false
    add_column :orders, :quantity, :integer, default: 0
    add_reference :orders, :product, type: :integer, foreign_key: true
  end
end
