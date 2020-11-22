class AddRatingToStorextra < ActiveRecord::Migration[5.2]
  def change
    add_column :storextras, :rating, :float, default: 0
  end
end
