class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
