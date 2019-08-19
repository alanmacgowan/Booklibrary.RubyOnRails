class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, limit: 100
      t.string :description
      t.date :publish_date
      t.string :language, limit: 100
      t.string :isbn
      t.integer :pages
      t.decimal :price, precision: 7, scale: 2
      t.references :publisher, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
