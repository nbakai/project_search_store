class CreateStorextras < ActiveRecord::Migration[5.2]
  def change
    create_table :storextras do |t|
    
      t.text :description
      t.time :horario_open
      t.time :horario_close
      t.text :links 
      t.references :store, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end
