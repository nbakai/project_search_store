class AddStorextraToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :storextra, type: :integer, foreign_key: true
  end
end
