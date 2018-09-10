class CreateFish < ActiveRecord::Migration[5.2]
  def change
    create_table :fish do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.string :description
      t.references :store, foreign_key: true, null: false

      t.timestamps
    end
  end
end
