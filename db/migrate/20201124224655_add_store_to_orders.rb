class AddStoreToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :store, type: :integer, foreign_key: true
  end
end
