class CreatePublicCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :public_cart_items do |t|
      t.string :address, null: false
      t.integer :amount, null: false

      t.timestamps
    end
  end
end
