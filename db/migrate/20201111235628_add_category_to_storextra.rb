class AddCategoryToStorextra < ActiveRecord::Migration[5.2]
  def change
    add_reference :storextras, :category, type: :integer, foreign_key: true
  end
end
