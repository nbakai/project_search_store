class AddVisitIdToStorextras < ActiveRecord::Migration[5.2]
  def change
    add_column :storextras, :visit_id, :bigint
  end
end
