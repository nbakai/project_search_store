class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, type: :integer, foreign_key: true
      t.string :number
      t.integer :total
      t.string :state

      t.timestamps
    end
  end
end
