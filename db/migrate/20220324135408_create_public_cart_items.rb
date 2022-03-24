class CreatePublicCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :public_cart_items do |t|

      t.timestamps
    end
  end
end
