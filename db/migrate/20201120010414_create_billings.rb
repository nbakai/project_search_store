class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.string :code
      t.string :payment_method
      t.decimal :amount, precision: 5, scale: 2
      t.string :currency
      t.integer :user_id

      t.timestamps
    end
  end
end
