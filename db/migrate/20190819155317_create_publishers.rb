class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.string :name, limit: 100
      t.string :country, limit: 100

      t.timestamps
    end
  end
end
