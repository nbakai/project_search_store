class CreateStoreExtras < ActiveRecord::Migration[5.2]
  def change
    create_table :store_extras do |t|
      t.string :link_facebook
      t.string :link_instagram
      t.string :link_whatsapp
      t.string :link_web
      t.time :horario_open
      t.time :horario_closed
      t.text :description
      t.references :store, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end
