class AddStoreToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :store, type: :integer, foreign_key: true
  end
end
