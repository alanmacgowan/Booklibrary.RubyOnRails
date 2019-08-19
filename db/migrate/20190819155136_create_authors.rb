class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :last_name, limit: 70
      t.string :first_name, limit: 70
      t.date :birth_date
      t.string :country, limit: 100
      t.text :about
      t.string :gender, limit: 50

      t.timestamps
    end
  end
end
