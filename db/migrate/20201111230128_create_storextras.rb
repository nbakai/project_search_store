class CreateStorextras < ActiveRecord::Migration[5.2]
  def change
    create_table :storextras do |t|
      t.string :address
      t.string :phone
      t.text :description
      t.time :horario_open
      t.time :horario_close
      t.string :link_facebook
      t.string :link_instagram
      t.string :link_whatsapp
      t.string :link_web
      t.references :store, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end
