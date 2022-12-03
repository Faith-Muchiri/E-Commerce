class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.datetime :date
      t.string :history
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
