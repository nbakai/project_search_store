class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :user, type: :integer, foreign_key: true
      t.references :storextra, type: :integer, foreign_key: true

      t.timestamps
    end
  end
end
